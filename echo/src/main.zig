const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    var buffer: [1024]u8 = undefined;
    const user_input: ?[]u8 = try stdin.readUntilDelimiterOrEof(&buffer, '\n');
    
    if (user_input) |input| {
        try stdout.print("{s}\n", .{input});
    }
}
