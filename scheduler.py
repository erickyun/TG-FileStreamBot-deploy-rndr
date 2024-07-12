import schedule
import time
import os

def job():
    os.system("curl https://tg-filestreambot-deploy.onrender.com/")

# Schedule the job every 12 minutes
schedule.every(12).minutes.do(job)

while True:
    schedule.run_pending()
    time.sleep(1)
