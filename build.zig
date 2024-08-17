const std = @import("std");

pub fn build(b: *std.Build) void {
    const exe = b.addExecutable(.{
        //Exe output name
        .name = "tetris",
        //Source files
        .root_source_file = b.path("tetris.zig"),
        //standard build ???
        .target = b.host,
    });

    exe.linkLibrary(opengl);

    //Artifact something
    b.installArtifact(exe);

    // Run the bitch
    const run_exe = b.addRunArtifact(exe);



    // Run the thing 
    const run_step = b.step("run", "Run the application");
    run_step.dependOn(&run_exe.step);
}
