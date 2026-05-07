# this is a template for using modules in vscode

this template can be used for macOS to use modern modules with syntax highlighting in vscode.

you need installed: llvm via brew, ninja, cmake, clangd extension in vscode.

the libcüümodules.json() got created manually as cmake complained about not finding it- apparently it is not included with brew install llvm so i created it manually. 

you need llvm. The clang compiler from apple does NOT work as it apparently does not support 
modules. 

after compiling the for first time, the language server of clangd should be able to
detect the syntaxes. to apply, just restart clangd in vscode (cmd + shift + P -> clangd: restart language server). The reason is that only after building for the first time, the compiled binaries (your now non existing header files) are stored in build/CmakeFiles/main.dir. 

thats why if you run git clean or delete your build/ folder, your syntax highlighting will break.