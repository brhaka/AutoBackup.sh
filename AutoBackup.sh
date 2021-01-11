# AutoBackup.sh #
# by ejuliao- && tpereira #

if [ -z ${BACKUP_DRIVE} ]
then
	printf "Variable \"BACKUP_DRIVE\" does not exists."
else
	if [ -d "/Volumes/$BACKUP_DRIVE/" ]
	then	
		export BACKUP_DATETIME_FILE_NAME="$(date +'%Y-%m-%d__%H-%M-%S')"
		cd /Volumes/$BACKUP_DRIVE/
		zip -r /Volumes/$BACKUP_DRIVE/$BACKUP_DATETIME_FILE_NAME.zip ~/ -x '*Library*'
		printf "Backup successfully done.\nFiles were zipped to $BACKUP_DRIVE/$BACKUP_DATETIME_FILE_NAME.zip"
		unset BACKUP_DATETIME_FILE_NAME
	else
		printf "Drive specified in variable \"BACKUP_DRIVE\" does not exists."
	fi
fi
