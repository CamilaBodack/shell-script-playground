####################################################
# Script to display greetings based on system hour #
#                                                  #
####################################################

HOUR=$(date +%H)
HMS=$(date +%r)

case $HOUR in
    [0-9]1[0-1])
    echo "Bom dia 🌈, a hora atual é: $HMS AM"
    ;;
    1[0-8])
    echo "Boa tarde 🎐, a hora atual é: $HMS PM"
    ;;
    1[0-9])
    echo "Boa noite 🌛, a hora atual é: $HMS PM"
    ;;
esac
    