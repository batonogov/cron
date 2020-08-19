for file in /etc/cron.daily/*.sh
do 
    echo $(date) >> /var/log/cron/daily-$(date +"%Y-%m-%d").log 2>&1;
    echo "$file" >> /var/log/cron/daily-$(date +"%Y-%m-%d").log 2>&1; 
    bash "$file" >> /var/log/cron/daily-$(date +"%Y-%m-%d").log 2>&1;
done
for file in /etc/cron.daily/*.py
do 
    echo $(date) >> /var/log/cron/daily-$(date +"%Y-%m-%d").log 2>&1;
    echo "$file" >> /var/log/cron/daily-$(date +"%Y-%m-%d").log 2>&1; 
    python3 "$file" >> /var/log/cron/daily-$(date +"%Y-%m-%d").log 2>&1;
done
