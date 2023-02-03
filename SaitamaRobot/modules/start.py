
from telethon import TelegramClient, events, Button
from SaitamaRobot import telethn, OWNER_ID, DEV_USERS, DRAGONS, DEMONS

# =================== CONSTANT ===================

@telethn.on(events.NewMessage(pattern=f"^[!/]start ?(.*)"))
async def starts(event):
    if event.is_private:
        await event.respond(f"**Hey! I'm working fine**")