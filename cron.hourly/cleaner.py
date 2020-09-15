import os, time


path = '/var/log/cron'

os.chdir(path)
for root, dirs, files in os.walk('.', topdown = False):
   for name in files:
      file_name = os.path.join(root, name)
      now = time.time()
      mtime = os.path.getmtime(file_name)
      # if now - mtime > (7 * 86400):
      if now - mtime > (60 * 60):
          os.remove(file_name)
          print('Удалил', file_name)
   for name in dirs:
      dir_name = os.path.join(root, name)
