# AutoBackup.sh #
# by ejuliao- && tpereira #

if [ -z ${BACKUP_DRIVE} ]
then
	printf "Variable \"BACKUP_DRIVE\" does not exists."
else
	if [ -d "/Volumes/$BACKUP_DRIVE/" ]
	then	
		export BACKUP_DATETIME_FOLDER_NAME="$(date +'%Y-%m-%d__%H-%M-%S')"
		mkdir /Volumes/$BACKUP_DRIVE/$BACKUP_DATETIME_FOLDER_NAME
		cd /Volumes/$BACKUP_DRIVE/$BACKUP_DATETIME_FOLDER_NAME/
		rsync -a -v --exclude='/Library' ~/ /Volumes/$BACKUP_DRIVE/$BACKUP_DATETIME_FOLDER_NAME
		printf "Backup successfully done.\nFiles were copied to $BACKUP_DRIVE/$BACKUP_DATETIME_FOLDER_NAME."
		unset BACKUP_DATETIME_FOLDER_NAME
	else
		printf "Drive specified in variable \"BACKUP_DRIVE\" does not exists."
	fi
fi
