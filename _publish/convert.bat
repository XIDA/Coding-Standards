rmdir /Q /S tmp
xcopy ..\*.md tmp\
xcopy ..\filestructures tmp\filestructures\
xcopy ..\general tmp\general\
fnr.exe --cl --dir "%~dp0\tmp" --fileMask "*.md" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --useRegEx --find "\[.*\].*\(.*\.md\)" --replace ""
cd tmp
pandoc --toc -V documentclass=report -f markdown -t latex -o ..\xd_codingstandards_v0.1.pdf README.md Definitions.md Styling.md "SVNCommitGuidelines.md" "HowToPrepareYourCode.md" "general\README.md" "general\AvoidComplicatedIfs.md" "filestructures\README.md" "filestructures\Components.md" "filestructures\Delegates.md" "filestructures\FileAssets.md" "filestructures\Libraries.md" "filestructures\Managers.md"
cd ..
rmdir /Q /S tmp
