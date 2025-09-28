Bamms Crates
Description

This resource allows you to create usable crates that reward players with items you assign to them. Perfect for loot-box style systems, CSGO-inspired cases, or unique crate drops in your FiveM server.

Features

🎲 Custom weighted chances for specific item drops

🖼️ Support for local or remote images for the spinner

📦 Ability to create multiple cases, each with its own unique set of items

🔒 Server-sided randomized selection & validation (ensures fair play)

🎮 Includes several CSGO-style inventory images and example crates to get started quickly



How to Add a New Case

Define the crate in your shared items file using the same format as below.

Change the key (['case_name']) to your new case ID.

Update the label with the display name.

Set the image path (must be added to your images folder).

Edit the description if desired.

Add items that can be dropped from the case in the crate’s configuration file.

Assign weighted chances to each item to balance rarity.

Place the image (e.g. case_new.png) in the inventory images directory.

Restart your server and test by spawning the new crate in-game.

Discord

💬 Join the community




items
-------------------
-- Bamms Crates
-------------------
['case_recoil'] = {
    label = 'Recoil Case',
    weight = 2000,
    stack = false,
    close = true,
    description = 'A prize awaits inside.',
    usable = true,
    client = {
        image = 'case_recoil.png'
    }
},

['case_prisma2'] = {
    label = 'Prisma 2 Case',
    weight = 2000,
    stack = false,
    close = true,
    description = 'A prize awaits inside.',
    usable = true,
    client = {
        image = 'case_prisma2.png'
    }
},

['case_falcion'] = {
    label = 'Falcion Case',
    weight = 2000,
    stack = false,
    close = true,
    description = 'A prize awaits inside.',
    usable = true,
    client = {
        image = 'case_falcion.png'
    }
},

['case_dangerzone'] = {
    label = 'Dangerzone Case',
    weight = 2000,
    stack = false,
    close = true,
    description = 'A prize awaits inside.',
    usable = true,
    client = {
        image = 'case_dangerzone.png'
    }
},

['case_breakout'] = {
    label = 'Breakout Case',
    weight = 2000,
    stack = false,
    close = true,
    description = 'A prize awaits inside.',
    usable = true,
    client = {
        image = 'case_breakout.png'
    }
},

['case_chroma2'] = {
    label = 'Chroma 2 Case',
    weight = 2000,
    stack = false,
    close = true,
    description = 'A prize awaits inside.',
    usable = true,
    client = {
        image = 'case_chroma2.png'
    }
},
