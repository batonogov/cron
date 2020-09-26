logs=/var/log/cron/reboot
path=/etc/cron.reboot

# Создание директорий в случае их отсутсвия
if ! [ -d $path ]
then
    mkdir $path
fi

if ! [ -d $logs ]
then
    mkdir $logs
fi

# Проверка наличия скриптов в папке и их выполнение
if ! [ `ls $path | wc -l` -eq 0 ] 
then
    cd $path

    for file in *.sh
    do  
        if [[ "$file" = "*.sh" ]]
        then
            echo "$file"
        else
            mkdir $logs
            echo $(date) >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1;
            echo "$file" >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1;
            bash "$file" >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1 &
        fi
    done

    for file in *.py
    do 
        if [[ "$file" = "*.py" ]]
        then
            echo "$file"
        else
            mkdir $logs
            echo $(date) >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1;
            echo "$file" >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1; 
            python3 "$file" >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1 &
        fi
    done
else
    echo $(date) >> $logs/system-$(date +"%Y-%m-%d").log 2>&1;
    echo Папка $path пуста >> $logs/system-$(date +"%Y-%m-%d").log 2>&1
fi
