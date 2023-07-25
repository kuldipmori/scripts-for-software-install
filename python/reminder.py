from plyer import notification
import time

def display_notification(title, message):
    notification.notify(
        title=title,
        message=message,
        timeout=10
    )

# Example usage
notification_title = "Keka & Wazir Task"
notification_message = "⚠️ Hello, Kuldip! Please work task. ⚠️"

water_notification_title = "Water Reminder"
water_notification_message = "🚰   Time to drink water! Stay hydrated. 🚰"

movement_notification_title = "Movement Reminder"
movement_notification_message = "🏃   Take a break and stretch your legs! Move around for a while. 🏃"

notification_interval = 1800

start_time = time.time()

while True:
    current_time = time.time()
    elapsed_time = current_time - start_time

    if elapsed_time >= notification_interval:
        display_notification(notification_title, notification_message)
        display_notification(water_notification_title, water_notification_message)
        display_notification(movement_notification_title, movement_notification_message)
        start_time = current_time  # Reset the start time

    time.sleep(1800)  # Delay for 10 seconds
