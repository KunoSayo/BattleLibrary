use std::fs::File;
use std::io::{Error, Write};
use std::path::Path;

use crate::scripts::{arrow_self, gcd_ui, tri_aoe};

const OVERWRITE: bool = false;

fn gen_file(name: &str, overwrite: bool) -> Result<File, Error> {
    let path = format!("./battlelib/data/battle/functions/{}.mcfunction", name);
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

mod scripts {
    use std::io::{Error, Write};

    use crate::{gen_ff14, gen_file, OVERWRITE};

    type ScriptReturn = Result<(), Error>;

    pub fn circles() -> ScriptReturn {
        let mut rad = 0.5;
        while rad <= 25.0 {
            let mut file = gen_file(&format!("circle/{:.1}", rad), OVERWRITE)?;
            let step = if rad <= 1.0 {
                10.0
            } else if rad <= 3.0 {
                5.0
            } else if rad <= 5.0 {
                4.0
            } else if rad <= 10.0 {
                2.0
            } else {
                1.0
            };

            let mut i = 0.0;
            while i < 360.0 {
                let (sin, cos) = ((i as f64) * std::f64::consts::PI / 180.0).sin_cos();
                let x = sin * rad as f64;
                let y = cos * rad as f64;
                let rx = -x;
                let ry = -y;
                writeln!(file, "execute positioned ~{x:.5} ~ ~{y:.5} facing ~{rx:.5} ~ ~{ry:.5} run function battleapi:circle_cb")?;
                i += step;
            }
            rad += 0.5;
        }
        Ok(())
    }

    pub fn arrow_self() -> ScriptReturn {
        let mut file = gen_file("x2self", OVERWRITE)?;

        // \ | | /
        //  \| |/
        // --* *--
        //    o
        // --* *--
        //  /| |\
        // / | | \

        // draw axis
        for dis in (4..).map(|x| x as f64 * 0.25).take_while(|x| *x <= 2.5) {
            writeln!(file, "execute positioned ~{dis} ~ ~1 run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~-{dis} ~ ~1 run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~{dis} ~ ~-1 run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~-{dis} ~ ~-1 run function battleapi:x2self_cb")?;

            writeln!(file, "execute positioned ~1 ~ ~{dis} run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~1 ~ ~-{dis} run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~-1 ~ ~{dis} run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~-1 ~ ~-{dis} run function battleapi:x2self_cb")?;
        }
        // draw x
        let unit = 0.25 / 2.0_f64.sqrt();
        for dis in (6..).map(|x| x as f64 * unit).take_while(|x| *x * *x <= (5.0 / 2.0_f64.sqrt()).powi(2)) {
            writeln!(file, "execute positioned ~{dis:.5} ~ ~{dis:.5} run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~{dis:.5} ~ ~-{dis:.5} run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~-{dis:.5} ~ ~{dis:.5} run function battleapi:x2self_cb")?;
            writeln!(file, "execute positioned ~-{dis:.5} ~ ~-{dis:.5} run function battleapi:x2self_cb")?;
        }

        Ok(())
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
            while cur_left <= 20.0 {
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
}

fn main() {
    let ss = [scripts::circles, arrow_self, tri_aoe, gcd_ui];
    for f in ss {
        let result = std::panic::catch_unwind(|| {
            if let Err(e) = f() {
                eprintln!("One script failed for {:?}", e);
            } else {
                println!("Done one script");
            }
        });
        if let Err(e) = result {
            eprintln!("Panicked for {:?}", e);
        }
    }
}
