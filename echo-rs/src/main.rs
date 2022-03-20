use std::env;

fn main() {
    // Get args and save in Vector
    let args: Vec<String> = env::args().collect();
        
    let output = match args.get(1) {
        Some(input_string) => input_string,
        None => "",
    };
    
    println!("{}", output);
}
