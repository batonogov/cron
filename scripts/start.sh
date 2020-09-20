path=/var/log/cron/start

cd /etc/cron.start/

for file in *.sh
do  
    if [[ "$file" = "*.sh" ]]
    then
        echo "$file"
    else
        mkdir $path
        echo $(date) >> $path/${file}-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> $path/${file}-$(date +"%Y-%m-%d").log 2>&1;
        bash "$file" >> $path/${file}-$(date +"%Y-%m-%d").log 2>&1 &
    fi
done

for file in *.py
do 
    if [[ "$file" = "*.py" ]]
    then
        echo "$file"
    else
        mkdir $path
        echo $(date) >> $path/${file}-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> $path/${file}-$(date +"%Y-%m-%d").log 2>&1; 
        python3 "$file" >> $path/${file}-$(date +"%Y-%m-%d").log 2>&1 &
    fi
done