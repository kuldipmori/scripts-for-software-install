import smtplib
import email.utils
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

# Get user input for sender information
SENDER = input("Enter your email address (Ex. noreply@pojectname.com): ")
SENDERNAME = input("Enter your name (kuldip mori): ")

# Get user input for recipient information
RECIPIENT = input("Enter recipient email address (personal mail address): ")

# Get user input for SMTP credentials
USERNAME_SMTP = input("Enter your SMTP username | Access key of SES user: ")
PASSWORD_SMTP = input("Enter your SMTP password | Secret key of SES user: ")

# SMTP server settings (You can modify this if needed)
#HOST = "email-smtp.eu-central-1.amazonaws.com"
#HOST = "email-smtp.us-east-1.amazonaws.com"
HOST = input("Enter your SMTP Region ARN: ")
PORT = 587

# The subject line of the email.
SUBJECT = 'AWS-SES Test mial from python script'

# The email body for recipients with non-HTML email clients.
BODY_TEXT = ("Amazon SES\r\n"
             "Email sended by AWS-SES"
            )

# The HTML body of the email.
BODY_HTML = """
<html>
<head></head>
<body>
        <h1>Testing mail from script</h1>
        <p>If you view this message, your SES-service is working.</p>
</body>
</html>
            """

# Create message container - the correct MIME type is multipart/alternative.
msg = MIMEMultipart('alternative')
msg['Subject'] = SUBJECT
msg['From'] = email.utils.formataddr((SENDERNAME, SENDER))
msg['To'] = RECIPIENT

# Record the MIME types of both parts - text/plain and text/html.
part1 = MIMEText(BODY_TEXT, 'plain')
part2 = MIMEText(BODY_HTML, 'html')

# Attach parts into the message container.
# According to RFC 2046, the last part of a multipart message, in this case
# the HTML message, is best and preferred.
msg.attach(part1)
msg.attach(part2)

# Try to send the message.
try:  
    server = smtplib.SMTP(HOST, PORT)
    server.ehlo()
    server.starttls()

    # smtp lib docs recommend calling ehlo() before & after starttls()
    server.ehlo()
    server.login(USERNAME_SMTP, PASSWORD_SMTP)
    server.sendmail(SENDER, RECIPIENT, msg.as_string())
    server.close()
    print("With success, email was sanded. Within seconds, you receive a test email.")
except Exception as e:
    print("Error:", e)
