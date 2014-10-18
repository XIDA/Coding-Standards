rmdir /Q /S tmp
xcopy ..\*.md tmp\
fnr.exe --cl --dir "%~dp0\tmp" --fileMask "*.md" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --useRegEx --find "\[.*\].*\(.*\.md\)" --replace ""

pandoc --toc -V documentclass=report -f markdown -t latex -o xd_codingstandards_v0.1.pdf README.md Definitions.md "SVN Commit guidelines.md" "How to prepare your code.md"