@echo off
REM Define rclone and config file locations
set rclone=C:/Windows/rclone.exe
set config_file=C:/Users/Moodkiller/.config/rclone/rclone.conf

REM Use rclone to display a list of files in the root of Google Drive for eaiser direction defining
echo Current FOLDERS on your GDrive (this will take a while if you have a lot of folders):
%rclone% --config %config_file% lsd gdrive: --fast-list

REM Store the current working directories folder name in a variable 
for %%I in (.) do set CurrDirName=%%~nxI 
echo.
echo Define the folder to upload your files into (on GDrive). 
echo This can be in the format of just Folder or Folder/Folder2/etc.
echo Note: You DON'T have to enter the current folder name you are uploading from, the script will do that for you. 

:set_destination
set /p destination=Define folder to upload to from the above (Folder, Folder/Folder/etc)? 

echo [92mSanity check: your files will be uploading to My Drive/%destination%/%CurrDirName%[0m
set /p var=Is this correct? [y/n]: 
if %var%== y goto upload
if not %var%== y goto set_destination

:upload
REM No limit here, just sensible numbers
set /p transfers=Number of simultaneous transfers (1-15)? 
@echo off

echo.
REM full list of rclone options can be found in the offical documentatation https://rclone.org/docs/#options 
%rclone% --config %config_file% copy --track-renames --verbose --ignore-existing --transfers %transfers% --checkers 10 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats-file-name-length 0 --stats 1s "%cd%" "gdrive:%destination%/%CurrDirName%"
echo.
echo [92mCheck this location for your file(s): My Drive/%destination%/%CurrDirName%[0m
@pause