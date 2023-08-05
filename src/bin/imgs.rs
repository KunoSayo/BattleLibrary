use std::io;
use std::path::{Path, PathBuf};

use image::{ImageBuffer, Rgba};

const IMG_LEN: u32 = 512;
const IMG_R_F: f64 = IMG_LEN as f64 / 2.0;

fn gen_colors() {
    let path = r#"./ff/assets/minecraft/textures/trims/color_palettes/"#;
    let colors =
        [("red", [255u8, 0, 0, 255]),
            ("white", [255, 255, 255, 255]),
            ("warning", [240, 213, 7, 128]),
            ("yellow", [240, 213, 7, 255]),
            ("red_a", [255, 0, 0, 64]),
            ("purple_a", [73, 23, 137, 64])];
    for (color, pixel) in colors {
        let path = format!("{}{}.png", path, color);
        let file_path = Path::new(&path);
        if let Ok(false) = file_path.try_exists() {
            let mut img = image::ImageBuffer::new(1, 1);
            img.put_pixel(0, 0, image::Rgba(pixel));
            if let Err(e) = img.save(file_path) {
                eprintln!("Save image {color} failed for {e:?}");
            } else {
                println!("Generated {}", color);
            }
        } else {
            println!("Skipped {}", color);
        }
    }
}

fn gen(path: PathBuf, image: impl FnOnce() -> ImageBuffer<Rgba<u8>, Vec<u8>>) {
    if let Ok(false) = path.try_exists() {
        if let Err(e) = image().save(&path) {
            eprintln!("Save image {path:?} failed for {e:?}");
        } else {
            println!("Generated {:?}", path);
        }
    } else {
        println!("Skipped {path:?}");
    }
}

fn gen_ring(path: PathBuf, div: f64, full: f64, a_init: f64) {
    gen(path, move || {
        let mut img = ImageBuffer::new(IMG_LEN, IMG_LEN);
        let edge = IMG_R_F / div;
        let rds = (IMG_R_F - edge).powf(2.0);
        for x in 0..IMG_LEN {
            for y in 0..IMG_LEN {
                let center = IMG_R_F - 0.5;
                let dis = ((x as f64) - center).powf(2.0) + ((y as f64) - center).powf(2.0);
                if rds < dis && dis <= IMG_R_F.powf(2.0) {
                    let d = (dis.sqrt() - rds.sqrt()).min(edge - full);

                    let a = (a_init * (d / (edge - full)) + 255.0 - a_init) as u32 as u8;
                    img.put_pixel(x, y, Rgba::from([255, 255, 255, a]));
                } else {
                    img.put_pixel(x, y, Rgba::from([0, 0, 0, 0]));
                }
            }
        }
        img
    })
}

fn gen_block_texture() {
    let path = Path::new(r#"./ff/assets/minecraft/textures/block/"#);

    gen(path.join("circle.png"), || {
        let mut img = ImageBuffer::new(IMG_LEN, IMG_LEN);
        for x in 0..IMG_LEN {
            for y in 0..IMG_LEN {
                let center = IMG_R_F - 0.5;
                let dis = ((x as f64) - center).powf(2.0) + ((y as f64) - center).powf(2.0);
                if dis <= IMG_R_F.powf(2.0) {
                    img.put_pixel(x, y, Rgba::from([255, 255, 255, 255]));
                } else {
                    img.put_pixel(x, y, Rgba::from([0, 0, 0, 0]));
                }
            }
        }
        img
    });

    gen(path.join("plane.png"), || {
        let mut img = ImageBuffer::new(1, 1);
        img.put_pixel(0, 0, Rgba::from([255, 255, 255, 255]));
        img
    });

    gen(path.join("up.png"), || {
        let mut img = ImageBuffer::new(IMG_LEN, IMG_LEN);
        for x in 0..IMG_LEN {
            for y in 0..IMG_LEN {
                if y < IMG_R_F as u32 {
                    img.put_pixel(x, y, Rgba::from([255, 255, 255, 255]));
                } else {
                    img.put_pixel(x, y, Rgba::from([0, 0, 0, 0]));
                }
            }
        }
        img
    });

    gen_ring(path.join("ring_4.png"), 4.0, 4.0, 192.0);
    gen_ring(path.join("ring_8.png"), 8.0, 2.0, 128.0);
    gen_ring(path.join("ring.png"), 64.0, 0.0, 0.0);
    gen_ring(path.join("ring2.png"), 32.0, 0.0, 0.0);
}

fn gen_models() {
    let read_dir = |path: &str| {
        Some(std::fs::read_dir(path).unwrap()
            .map(|x| x.unwrap().path())
            .collect::<Vec<_>>())
            .map(|mut x| {
                x.sort_by_cached_key(|v| v.file_stem().unwrap().to_string_lossy().to_string());
                x
            })
            .unwrap()
            .into_iter()
            .enumerate()
    };

    let mut models_total = 0;
    let mut result = r#"{
  "parent": "minecraft:block/cube_all",
  "textures": {
    "all": "minecraft:block/blue_stained_glass"
  },
  "overrides": ["#.to_string();
    for (id, x) in read_dir(r#"./ff/assets/minecraft/textures/block"#) {
        let start = 99610 + id * 100;
        let model = x.file_stem().unwrap().to_string_lossy();
        for (id, x) in read_dir(r#"./ff/assets/minecraft/textures/trims/color_palettes"#) {
            let color = x.file_stem().unwrap().to_string_lossy();

            if color == "white" {
                continue;
            }

            let name = format!("{}_{}", model, color);
            let path = format!(r#"./ff/assets/ff/models/item/{}.json"#, name);
            let path = Path::new(&path);
            models_total += 1;
            if let Ok(false) = path.try_exists() {
                std::fs::write(path, format!(r#"{{
    "parent": "ff:item/plane",
    "textures": {{
        "ffcircle": "block/{name}"
    }}
}}"#)).unwrap();


                println!("Generated models/item/{name}.json");
            }
            result += &format!(r#"
    {{
      "predicate": {{
        "custom_model_data": {cmd}
      }},
      "model": "ff:item/{name}"
    }},"#, cmd = start + id);
        }
    }
    result.pop();
    result += r#"
  ]
}"#;
    std::fs::write(r#"./ff/assets/minecraft/models/item/blue_stained_glass.json"#, result).unwrap();

    println!("There are {} in total", models_total);
    println!("It is about to cost {}MB memory to load all texutre.", 4 * IMG_LEN * IMG_LEN * models_total / 1024 / 1024);
}

fn main() -> io::Result<()> {
    gen_colors();
    gen_block_texture();
    gen_models();
    Ok(())
}

