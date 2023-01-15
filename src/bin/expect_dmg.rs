fn main() {
    let left = 88;
    let right = left + 64;
    let p = 1.0 / (right - left) as f64;
    let c_chance = 0.1;
    let c_dmg = |x: f64| {
        let half_add = true;
        if half_add {
            (x * 1.5).floor()
        } else {
            x + 50.0
        }
    };
    let mut ans = 0.0;
    for dmg in left..right {
        ans += dmg as f64 * p * (1.0 - c_chance);
        ans += c_dmg(dmg as f64) * p * c_chance;
    }
    // about 125
    println!("Expect damage: {}", ans);
    println!("Expect dps: {}", ans / 2.5);
}
