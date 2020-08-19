if [ -z "$(ls -A /etc/cron.reboot)" ]; then
    echo $(date)
    echo "/etc/cron.reboot/ пуста"
else
    for file in /etc/cron.reboot/*.sh
    do 
        echo $(date) >> /var/log/cron/reboot-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> /var/log/cron/reboot-$(date +"%Y-%m-%d").log 2>&1; 
        bash "$file" >> /var/log/cron/reboot-$(date +"%Y-%m-%d").log 2>&1;
    done
    for file in /etc/cron.reboot/*.py
    do 
        echo $(date) >> /var/log/cron/reboot-$(date +"%Y-%m-%d").log 2>&1;
        echo "$file" >> /var/log/cron/reboot-$(date +"%Y-%m-%d").log 2>&1; 
        python3 "$file" >> /var/log/cron/reboot-$(date +"%Y-%m-%d").log 2>&1;
    done
fi
