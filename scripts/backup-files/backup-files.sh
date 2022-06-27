###################################################
# Realiza backup da pasta /home/hostname          #
# Caso exista backup em um intervalo menor do que #
# 7 dias, fica opcional um novo backup            #
################################################### 

HOSTNAME=$(hostname)
USER_HOME="/home/$HOSTNAME"
BACKUP_DATE=$(date +%Y%m%d%H%M)

if [ ! -f "$USER_HOME/backup" ]
then
    mkdir -p "$USER_HOME/backup"
fi

RECENT_BACKUP=$(find "$USER_HOME/backup" -mtime -7 -ls | $?)

if [ "$RECENT_BACKUP" != 0 ] 
then
    read -p "Existem arquivos de backup salvos nos últimos 7 dias, deseja continua ? 🚦 0 - NÃO, 1 - SIM "  EXECUTAR
    if [ $EXECUTAR -eq 1 ] 
    then
        cd "$USER_HOME/backup" && tar -cvf "backup_home_$BACKUP_DATE.tar" "$USER_HOME/Documentos"
        echo "\e[1;92mBackup salvo com sucesso!\e[0m"
    fi
else
    cd "$USER_HOME/backup" && tar -cvf "backup_home_$BACKUP_DATE.tar" "$USER_HOME/Documentos"
    echo "\e[1;92mBackup salvo com sucesso!\e[0m"
fi





