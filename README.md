# ROOM SCHEDULER

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Oue company is working in Hybrid remote mode and we are looking to have different groups of people using the office space, but not at the same time.

We tried to use a Shared Google Calendar, but it turned out more complicated than what we thought, this is just a nicer way to have a shared excel sheet.

This one just saves the name, but for your own organization maybe you should use OAuth to verify your users.

Under the hood there is not much to see. Just a couple of classes: `Room`, `Day`, and `Shift`. After deploy, it starts with 3 months worth of days created and two rooms: `Room 1` and `Room 2`. If you want to change them, you'll have to do it via the console (that is `rails c`)


