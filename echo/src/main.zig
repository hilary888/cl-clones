const std = @import("std");
const process = std.process;

pub fn main() !void {
    // get stdout writer
    const stdout = std.io.getStdOut().writer();

    var allocator: std.mem.Allocator = undefined;
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    allocator = arena.allocator();
    var arg_it = try process.argsWithAllocator(allocator);

    // Skip exe name
    _ = arg_it.skip();  
    // Get next arg or return empty string
    const content = arg_it.next() orelse "";

    try stdout.print("{s}\n", .{content});
}
