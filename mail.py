#!/usr/bin/python
# -*- coding: utf-8 -*-

'''
regularly send notification to mail list members

@author Chris Luscher
'''

import smtplib

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

EMAIL_MINE = ""
EMAIL_YOURS = [""]

MSG = MIMEMultipart('alternative')
MSG['Subject'] = "Emailverteiler"
MSG['From'] = EMAIL_MINE
MSG['To'] = EMAIL_YOURS

TEXT = ""

HTML = ""

PART1 = MIMEText(TEXT, 'plain')
PART2 = MIMEText(HTML, 'html')

MSG.attach(PART1)
MSG.attach(PART2)

SERVER = smtplib.SMTP('localhost')
SERVER.sendmail(EMAIL_MINE, EMAIL_YOURS, MSG.as_string())
SERVER.quit()
