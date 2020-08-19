if [ -z "$(ls -A /etc/cron.weekly)" ]; then
    echo $(date)
    echo "/etc/cron.weekly/ пуста"
else
    for file in /etc/cron.weekly/*.sh
    do 
        echo $(date) >> /var/log/cron/weekly-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> /var/log/cron/weekly-$(date +"%Y-%m-%d").log 2>&1; 
        bash "$file" >> /var/log/cron/weekly-$(date +"%Y-%m-%d").log 2>&1;
    done
    for file in /etc/cron.weekly/*.py
    do 
        echo $(date) >> /var/log/cron/weekly-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> /var/log/cron/weekly-$(date +"%Y-%m-%d").log 2>&1; 
        python3 "$file" >> /var/log/cron/weekly-$(date +"%Y-%m-%d").log 2>&1;
    done
fi
