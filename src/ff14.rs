use std::fs::File;
use std::io::Error;
use std::io::Write;
use std::path::Path;

use crate::{OVERWRITE, ScriptReturn};

fn gen_ff14(name: &str, overwrite: bool) -> Result<File, Error> {
    let path = format!("./ff14/data/ff14/functions/{}.mcfunction", name);
    std::fs::create_dir_all(Path::new(&path).parent().unwrap())?;
    let mut file = File::options()
        .create(true)
        .write(true)
        .create_new(!overwrite)
        .truncate(true)
        .open(path)?;
    file.write_all(b"# Generated by rust codes\n")?;
    Ok(file)
}

pub fn tri_aoe() -> ScriptReturn {
    let angles = [15.0, 22.5, 30.0, 37.5, 45.0, 60.0, 67.5, 75.0];
    for angle in angles {
        let mut file = gen_ff14(&format!("tri/{:.1}", angle), OVERWRITE)?;
        let rev = 90.0f64 - angle;
        let rev_rad = rev.to_radians();
        let (sin, cos) = rev_rad.sin_cos();
        let k = 0.5 / cos;
        let left_delta = cos * k;
        let left_delta_half = left_delta * 0.5;
        let forward_delta = sin * k;
        let forward_delta_half = forward_delta * 0.5;
        let mut cur_left = 0.0;
        let mut cur_forward = 0.0;
        while cur_left <= 20.0 && cur_forward <= 30.0 {
            let mut forward_step = 0.0;
            while forward_step + cur_forward <= 30.0 {
                let forward = cur_forward + forward_step;
                writeln!(file, "execute positioned ^{:.5} ^ ^{:.5} run function ff14:tri_aoe_cb", cur_left, forward)?;
                if cur_left > 0.0 {
                    writeln!(file, "execute positioned ^-{:.5} ^ ^{:.5} run function ff14:tri_aoe_cb", cur_left, forward)?;
                }
                forward_step += 0.5;
            }
            if cur_left > 0.0 {
                writeln!(file, "execute positioned ^{:.5} ^ ^{:.5} run function ff14:tri_aoe_cb", cur_left - left_delta_half, cur_forward - forward_delta_half)?;
                writeln!(file, "execute positioned ^-{:.5} ^ ^{:.5} run function ff14:tri_aoe_cb", cur_left - left_delta_half, cur_forward - forward_delta_half)?;
            }

            cur_left += left_delta;
            cur_forward += forward_delta;
        }
    }

    Ok(())
}

pub fn gcd_ui() -> ScriptReturn {
    let mut file = gen_ff14("gcd_ui", OVERWRITE)?;
    writeln!(file, "execute unless score @s gcd matches 1.. run item replace entity @s hotbar.8 with air")?;

    for tick in 1..=50 {
        let command = r#"execute if score @s gcd matches @tick@ run item replace entity @s hotbar.8 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a76别看了，只是一个冷却显示用物品\"}}"}} @tick@"#;
        writeln!(file, "{}", command.replace("@tick@", &tick.to_string()))?;
    }
    Ok(())
}

pub fn target_circle() -> ScriptReturn {
    for r in [1.0, 2.0, 2.5, 3.0, 3.5, 4.0, 5.0] {
        let mut file = gen_ff14(&format!("tc/{}", r), OVERWRITE)?;
        for ang in -135..=135 {
            let (sin, cos) = (ang as f64).to_radians().sin_cos();
            let (x, y) = (cos * r, sin * r);
            writeln!(file, "execute positioned ^{y:.5} ^ ^{x:.5} run function ff14:tcb")?;
        }
        if r > 1.0 {
            let mut draw_arrow = |forward, left| -> ScriptReturn {

                let (sin, cos) = 22.5_f64.to_radians().sin_cos();
                let step = 0.125;
                let left_delta = step * sin;
                let forward_delta = step * cos;
                let mut cur_back = 0.0;
                let mut cur_left: f64 = left;
                while cur_back <= 1.0 {
                    let forward = forward - cur_back;

                    writeln!(file, "execute positioned ^{cur_left:.5} ^ ^{forward:.5} run function ff14:tcb")?;
                    if cur_back > 0.0 {
                        let n = -cur_left;
                        writeln!(file, "execute positioned ^{n:.5} ^ ^{forward:.5} run function ff14:tcb")?;
                    }
                    cur_left += left_delta;
                    cur_back += forward_delta;
                }
                Ok(())
            };
            draw_arrow(r - 0.375, 0.0)?;
            draw_arrow(0.5, r - 0.75)?;
            draw_arrow(0.5, 0.75 - r)?;
        }
    }
    Ok(())
}