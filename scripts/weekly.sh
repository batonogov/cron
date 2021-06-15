logs=/var/log/cron/weekly
path=/etc/cron.weekly

# Создание директорий в случае их отсутсвия
if ! [ -d $path ]
then
    mkdir $path
fi

# Проверка наличия скриптов в папке и их выполнение
if ! [ `ls $path | wc -l` -eq 0 ] 
then
    if ! [ -d $logs ]
    then
        mkdir $logs
    fi

    cd $path

    for file in *.sh
    do  
        if [[ "$file" = "*.sh" ]]
        then
            echo "$file"
        else
            echo $(date) >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1;
            echo "$file" >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1;
            bash "$file" >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1
        fi
    done

    for file in *.py
    do 
        if [[ "$file" = "*.py" ]]
        then
            echo "$file"
        else
            echo $(date) >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1;
            echo "$file" >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1; 
            python3 "$file" >> $logs/${file}-$(date +"%Y-%m-%d").log 2>&1
        fi
    done
fi
