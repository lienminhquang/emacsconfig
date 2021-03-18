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

# Emacs shotcuts:
Neo tree show: M-x neotree-show
Go to start/end of buffer: M-< / M->
Back to Indentation: M-m
Beginning / End of Defun: C-M-a / C-M-e
Next / Prev Error: M-g M-n / M-g M-p
Registers / Bookmarks: 
        C-x r SPC to store point in a register and C-x r j to jump to a point stored in a register.
        C-x r m to save a named bookmark; type C-x r b to jump to a named bookmark; and C-x r l to list all bookmarks.

M-x Neotree-show

---Open files---
C-x-4-f : open file in other window
C-x-5-f : open file in other frame

---highlight regexp---
C-x-w-h  (M-x highlight-regexp RET <REGEXP>)
C-x-w-p  (M-x highlight-phrase RET <REGEXP>)
C-x-w-r   (M-x unhighlight-regex)
\b<word>\b  to match whole word only

---Buffer---
select or create buffer: C-x b buffer
select or create buffer in other window: C-x 4 b buffer
pre buffer: C-x <left>
next buffer: C-x <right>
list buffer: C-x C-b
kill buffer: C-x k buffer
reload a file in a buffer: M-x revert-buffer

---Window----
split window: C-x 2 or C-x 3
switch buffer: C-x o
scroll other window: C-M-v
visit file on other window: C-x 4 f filename
delete window: C-x 0
kill buffer and window: C-x 4 0
delete other window: C-x 1

---Text---
move to begin line: M-a
move to end line:    M-e
kill forward to end line: M-k
fill back to begin line: c-x <del>
comment region: C-c C-c

cut: C-w
copy: M-w
paste: C-y
select all: C-x h

--search--
Incremental search forward: C-s
Incremental search backward: C-r
Go to line: M-g g

---
undo: C-/ or C-x u or C-_

---
yank: C-y

--
exit C-z
save buffer: C-x C-s

C:\Users\quang.lienminh\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\quanglienminh\.emacs.d
### 1. Company-mode for code complete need Cmake and clang
- Company-Irony and flycheck-irony setup:
- In order to work,we need to install irony server in the root directory and we also need "Compilation Database". 
- Open root directory (where CMakeLists.txt located) and type "M-x irony-install-server RET"
- Build Compilation Database using Cmake with Ninja generator and -DCMAKE_EXPORT_COMPILE_COMMANDS=1: 
- Ex: cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -G Ninja -B build
- Reference: https://cmake.org/cmake/help/v3.5/variable/CMAKE_EXPORT_COMPILE_COMMANDS.html
- Talk to emacs where the database located:
- Open emacs type "M-x irony-cdb-compilation-databases RET path_to_compile_commands.json RET"
### 2. ggtags is used to navigation need GNUGlobal

# Emacs shotcuts:
- Neo tree show: M-x neotree-show
- Go to start/end of buffer: M-< / M->
- Back to Indentation: M-m
- Beginning / End of Defun: C-M-a / C-M-e
- Next / Prev Error: M-g M-n / M-g M-p
- Registers / Bookmarks: 
        - C-x r SPC to store point in a register and C-x r j to jump to a point stored in a register.
        - C-x r m to save a named bookmark; type C-x r b to jump to a named bookmark; and C-x r l to list all bookmarks.

- M-x Neotree-show

#### Open files
- C-x-4-f : open file in other window
- C-x-5-f : open file in other frame

####  Highlight regexp
- C-x-w-h  (M-x highlight-regexp RET <REGEXP>)
- C-x-w-p  (M-x highlight-phrase RET <REGEXP>)
- C-x-w-r   (M-x unhighlight-regex)
- \b<_word_>\\b  to match whole word only

####  Buffer
- select or create buffer: C-x b buffer
- select or create buffer in other window: C-x 4 b buffer
- pre buffer: C-x <left>
- next buffer: C-x <right>
- list buffer: C-x C-b
- kill buffer: C-x k buffer
- reload a file in a buffer: M-x revert-buffer

#### Window
- split window: C-x 2 or C-x 3
- switch buffer: C-x o
- scroll other window: C-M-v
- visit file on other window: C-x 4 f filename
- delete window: C-x 0
- kill buffer and window: C-x 4 0
- delete other window: C-x 1

#### Text
- move to begin line: M-a
- move to end line:    M-e
- kill forward to end line: M-k
- fill back to begin line: c-x <del>
- comment region: C-c C-c

- cut: C-w
- copy: M-w
- paste: C-y
- select all: C-x h

#### Search
- Incremental search forward: C-s
- Incremental search backward: C-r
- Go to line: M-g g

- undo: C-/ or C-x u or C-_
- yank: C-y
- exit C-z
- save buffer: C-x C-s

- C:\Users\quang.lienminh\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\quanglienminh\.emacs.d
