@echo off

echo Deleting specified files and folders...

rem 删除文件
del "404.html"
del "index.html"

rem 删除文件夹及其内容
rmdir /s /q "about"
rmdir /s /q "assets"
rmdir /s /q "guide"
rmdir /s /q "icon"
rmdir /s /q "img"

echo Deletion complete.

echo Moving files from docs\.vuepress\dist...

rem 剪切 docs\.vuepress\dist 下的所有文件和文件夹到当前目录
robocopy "docs\.vuepress\dist" . /E /IS /MOVE

echo Move complete.
