//******************************
// Import

/// standard libraries - standard, expect
const standard = @import ("std");
const expect = standard.testing.expect; 

///

//END Import
//******************************


//***************************
//Class definitions 
//***************************

//***********************
// Screen definitions

// Tetris_screen
const tetris_screen = struct {
    const width_x: u8 = 8;
    const height_y: u8 = 64;

    // - Pieces on the board 

    // ? Mayhaps the piece cleared on the board
    
    // ? Mayhaps Queue of pieces coming down 
}; 


// Tetrominos - Four sided tetris pieces  
// Declaration of the valid 4 sided tetris pieces
// -------------------
// Sraight|  1 1 1 1 
// -------------------
// square |  1 1 
//        |  1 1
// -------------------
// T      |  1 1 1 
//        |    1
// -------------------
// L      |  1 1 1
//        |    1 
// -------------------
// Skew   |    1 1
//        |  1 1  
// -------------------
const tetrominos = struct {
    /// The enumeration type of tetromino:
    /// i.e. 
    /// What type of tetromino this is out of 
    /// Straight, Square, T, L, Skew
    const enum_type = enum {
        Straight, 
        Square, 
        T,
        L, 
        Skew
    };
};

//End Class definitions
//**********************


// Main Function - function entry point:
/// Game Loop function 
/// Loops indefinitely until a flag tells the game to quit
pub fn main() !void {
    const stdout = standard.io.getStdOut().writer();
    const stderr = standard.debug;

    // Test prints 
    try stdout.print("Hello");
    try stderr.print("error");


    // Game Loop
    while (true){

    }    


    //
}


// Taylor's first zig program 
//
// This is probably going to pivot into a tetris implementation
// Whilst I'm spinning me wheels
//
// * Things to note: i.e notes to Taylor
// > Zig uses C like commenting
//  so // but no /**/
// > Shits got try catch blocks like java etc
// > Print statements seem to be like old java aswell. The arcane stuff not like printf etc
//   SYNTAX: print ("string {vartype}\n", .{variable_name}
//
// > Has C like structures and classes
//
// * They seem to declare the class avialiability up front.
// <pub|priv> then <fn | class> u
//  
//  keywords list:
//  -> const
//  -> <pub | priv>
//  -> true | false
//  -> enum


