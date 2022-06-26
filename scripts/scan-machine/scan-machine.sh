##################################################################
# Script que faz a extração das seguintes informações da máquina:#
# 1. Nome da máquina                                             #
# 2. Data e hora atual                                           #
# 3. Data Instalação OS                                          #
# 4. Versão do Kernel                                            #
# 5. Quantidade de CPUs/Cores                                    #
# 6. Modelo da CPU                                               #
# 7. Total de memória RAM                                        #
# 8. Partições                                                   #
# Obs: Utilizado em máquinas Linux - Ubuntu utilizando idioma PT #                            
##################################################################

# Extrações

MAQUINA=$(hostname)
DATA_ATUAL=$(date)
DATA_OS_INSTALADO=$(ls -ld /var/log/installer | cut -d" " -f6,7,8,9)
VERSAO_KERNEL=$(uname -r)
QTD_CPU=$(lscpu | egrep "^CPU\(s\)" -m 1 | xargs | cut -d" " -f2)
CPU_MODEL=$(lscpu | egrep -i -o "^Nome\sdo\sModelo\:.+$" -m 1 | egrep -o "\s{2,}(.*)$" | xargs)
TOTAL_RAM=$(cat /proc/meminfo | egrep -i "MemAvail.+$" | xargs | cut -f2,3 -d' ')
PARTICOES=$(cat /proc/partitions)

# Resultados

printf "\e[1;97m\n\n============ 📜 Relatório Atual da Máquina: $MAQUINA 📜 ============\n\n\e[0m"
printf "\e[1;97m      
  ◽Data: \e[0m$DATA_ATUAL                                                  
  ◽\e[1;97mNome da máquina: \e[0m $MAQUINA                                              
  ◽\e[1;97mData de instalação SO: \e[0m $DATA_OS_INSTALADO                              
  ◽\e[1;97mVersão do Kernel: \e[0m$VERSAO_KERNEL                                       
  ◽\e[1;97mQuantidade de CPU: \e[0m$QTD_CPU                                            
  ◽\e[1;97mModelo CPU: \e[0m$CPU_MODEL                                                 
  ◽\e[1;97mTotal de RAM Disponível: \e[0m$TOTAL_RAM                                    
  ◽\e[1;97mPartições existentes: \e[0m                                   
  $PARTICOES 
\e[1;97m                                                         
==============================================================                                                  
\e[0m "