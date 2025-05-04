# OpenGL-Template
A minimal, bare-bones template for an OpenGL based project.

## src
The code found in src/main.cpp was copied from the official GLFW documentation found at: https://www.glfw.org/documentation.html

The code in main.cpp uses GLFW to create an empty window to do whatever you want with.

## Build
To build/compile the project, run build.bat in the root directory or alternatively:
`cmake -S . -B %BUILD_DIR% -G %GENERATOR% -DCMAKE_EXPORT_COMPILE_COMMANDS=ON`
Replace `%BUILD_DIR%` with the build directory and `%GENERATOR%` with your desired generator.
