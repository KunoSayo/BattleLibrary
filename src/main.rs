mod ff14;

use std::fs::File;
use std::io::{Error, Write};
use std::path::Path;
use crate::ff14::{gcd_ui, target_circle, tri_aoe};

use crate::scripts::{arrow_self, init_consts, lines};

pub const OVERWRITE: bool = false;

pub type ScriptReturn = Result<(), Error>;


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



mod scripts {
    use std::io::{Write};

    use crate::{gen_file, OVERWRITE, ScriptReturn};


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


    pub fn init_consts() -> ScriptReturn {
        let mut file = gen_file("initconst", OVERWRITE)?;
        writeln!(file, "scoreboard objectives add consts dummy")?;
        writeln!(file, "scoreboard players set 0 consts 0")?;
        for i in (1..=200).chain([500, 1000, 2000]) {
            writeln!(file, "scoreboard players set {i} consts {i}")?;
            writeln!(file, "scoreboard players set -{i} consts -{i}")?;
        }

        Ok(())
    }

    pub fn lines() -> ScriptReturn {
        let mut line_width = 0.0;
        while line_width <= 10.0 {
            for len in [1, 2, 3, 4, 5, 10, 15, 20, 25, 30, 35, 40] {
                let mut file = gen_file(&format!("line/{}/{}", line_width, len), OVERWRITE)?;
                let mut cur_left = 0.0;
                while cur_left <= line_width {
                    let mut cur_forward = 0.0;
                    while cur_forward <= len as f64 {
                        writeln!(file, "execute positioned ^{:.5} ^ ^{:.5} run function battleapi:line_cb", cur_left, cur_forward)?;

                        if cur_left > 0.0 {
                            writeln!(file, "execute positioned ^-{:.5} ^ ^{:.5} run function battleapi:line_cb", cur_left, cur_forward)?;
                        }
                        cur_forward += 0.5;
                    }
                    cur_left += 0.5;
                }
            }
            line_width += 0.5;
        }
        Ok(())
    }


}

fn main() {
    let ss = [scripts::circles, arrow_self, tri_aoe, init_consts, lines, gcd_ui, target_circle];
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
