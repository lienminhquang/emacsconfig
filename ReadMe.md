# Emacs configs
## Notes
### Company-mode for code complete need Cmake and clang
#### Company-Irony and flycheck-irony setup:
##### In order to work,we need to install irony server in the root directory and we also need "Compilation Database". 
###### 1. Open root directory (where CMakeLists.txt located) and type "M-x irony-install-server RET"
###### 2. Build Compilation Database using Cmake with Ninja generator and -DCMAKE_EXPORT_COMPILE_COMMANDS=1: 
####### Ex: cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -G Ninja -B build
####### Reference: https://cmake.org/cmake/help/v3.5/variable/CMAKE_EXPORT_COMPILE_COMMANDS.html
###### 3. Talk to emacs where the database located:
####### Open emacs type "M-x irony-cdb-compilation-databases RET path_to_compile_commands.json RET"
### ggtags to navigation need GNUGlobal
