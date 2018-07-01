# SendTo-rclone-GDrive
A simple .bat script to enable the user to Right-click on a folder or file and send it to your preconfigured GDrive account using rclone in Windows.

# Prerequisites
* Installed and configured Google Drive rclone setup (https://github.com/ncw/rclone)
* Make sure `rclone.exe` is located in your `C:/Windows` directory. Alternatively, define the location [here](https://github.com/Moodkiller/SendTo-rclone-GDrive/blob/79ac564ab26a020aa98ce7d4d53969efd15a6270/rclone-GDrive.bat#L3) 

# Installation
1. Download/save the .bat to any directory you choose.
2. Open the run dialogue box (Winkey+R) and type `shell:sendto` followed by the Enter key.
3. Copy and paste a **short-cut** to the file in the SendTo folder.
4. **NB** Right-click the newly created shortcut, click `Properties` and make sure the `Start in:` field is empty (clear what's in there if it isn't).
5. For aesthetics, click on the `Change Icon...` button and browse for the included icon from this repo (optional). Click `Ok`.
6. Click `Ok` to close the properties window.
7. Rename the created shortcut from `rclone-GDrive.bat - Shortcut` to `rclone-GDrive` or to your personal preference (optional).


# Usage
1. Locate a folder or file you would like to upload to GDrive.
2. Right-click it and go to `Send to` > `rclone-GDrive` (or whatever name you may have given it). A CMD window should open. Note: This window will prepopulate with the **folders** in the root directory of your GDrive account.
3. Follow the onscreen prompts and input the required details (destination upload directory, confirmation and simultaneous transfers)
4. ...

# Screenshots
![atl text](https://i.imgur.com/Wez5EEN.png "Context Menu")


![alt text](https://i.imgur.com/GrQysuN.png "CMD Window with user inputs")

![alt text](https://i.imgur.com/nBJpdCo.png "Completed confirmation with destination location")
