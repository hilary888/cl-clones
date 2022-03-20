use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    let input = args.get(1); 
        
        
    match input {
        Some(input_string) => println!("{}", input_string),
        None => println!(""),
    };
}
