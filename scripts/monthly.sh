if [ -z "$(ls -A /etc/cron.monthly)" ]; then
    echo $(date)
    echo "/etc/cron.monthly/ пуста"
else
    for file in /etc/cron.monthly/*.sh
    do 
        echo $(date) >> /var/log/cron/monthly-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> /var/log/cron/monthly-$(date +"%Y-%m-%d").log 2>&1; 
        bash "$file" >> /var/log/cron/monthly-$(date +"%Y-%m-%d").log 2>&1;
    done
    for file in /etc/cron.monthly/*.py
    do 
        echo $(date) >> /var/log/cron/monthly-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> /var/log/cron/monthly-$(date +"%Y-%m-%d").log 2>&1; 
        python3 "$file" >> /var/log/cron/monthly-$(date +"%Y-%m-%d").log 2>&1;
    done
fi
