if [ -z "$(ls -A /etc/cron.hourly)" ]; then
    echo $(date)
    echo "/etc/cron.hourly/ пуста"
else
    for file in /etc/cron.hourly/*
    do 
        echo $(date) >> /var/log/cron/hourly-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> /var/log/cron/hourly-$(date +"%Y-%m-%d").log 2>&1;
        bash "$file" >> /var/log/cron/hourly-$(date +"%Y-%m-%d").log 2>&1;
    done 
fi
