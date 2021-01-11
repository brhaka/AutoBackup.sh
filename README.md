# AutoBackup.sh

## Usage

In order to run `AutoBackup.sh`, the only thing you have to do is set the environment variable **BACKUP_DRIVE**

As so, if your desired backup drive is named *USB*, the command you must run is `export BACKUP_DRIVE=USB`

To start `AutoBackup.sh`, you need to open it with the **bash** command. E.g: `bash ~/Desktop/AutoBackup.sh`

## Files

`AutoBackup.sh` will create a **.zip** file at the specified drive's root directory, named with the following format: `Y-m-d__H-M-S.zip`

The `~/Library` folder is not included in the backup.

<br>

##### Feel free to contribute!

###### by ejuliao- and tpereira
