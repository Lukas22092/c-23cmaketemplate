# run this from the root of the project.
# The Default path to clang++ is /usr/bin/clang++, but it doesn't support C++23 modules yet, so we need to use the one from Homebrew.
# for doing so, we need to set the CMAKE_CXX_COMPILER and CMAKE_CXX_FLAGS variables to point to the correct clang++ and its libraries.
# after running this script, you can run `cmake --build build` to build the project.
cmake -G Ninja -B build \
  -DCMAKE_CXX_COMPILER=/opt/homebrew/opt/llvm/bin/clang++ \
  -DCMAKE_CXX_FLAGS="-L/opt/homebrew/opt/llvm/lib -Wl,-rpath,/opt/homebrew/opt/llvm/lib -I/opt/homebrew/opt/llvm/include/c++/v1" \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON