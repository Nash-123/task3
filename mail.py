import smtplib
s = smtplib.SMTP('smtp.gmail.com', 587)
s.starttls()
s.login("abc@gmail.com", "*********")
    # message
message1 = "Your accuracy is less than 90%!Please try again"
    # sending the mail 
s.sendmail("abc@gmail.com", "xyz@gmail.com", message1)
    # terminating the session 
s.quit()