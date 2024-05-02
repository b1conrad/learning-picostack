# Wovyn device

Imagine your uncle gave you a Wovyn temperature device, and you want to use it in your home.


## What it is

It is a machine that was made by a man named Scott Lemon many years ago.

Most of the time since he made it, there has been no power given to it. It just sat there in a box.

When Scott designed the device, he wrote a program for it. He etched the program into the read-only memory of each device that he made.

When you apply power to it, the device will begin to run Scott’s program. It doesn’t have a will of its own, but it _will_ do what he told it to do.


## What it does

When it has power, it wakes up. It gathers temperature, pressure, and humidity readings from sensors that Scott built into it, and sends them to a web address. Having sent the information, it sleeps for some number of seconds.

That is all it will do, unless you want to configure it.

It will continue to sleep and send information until you remove the power cord.


## How to configure it

Configuration is a kind of programming that you can do. You cannot change the main program of the device because that has been etched into read-only memory.

But you can provide some details about your home. Scott could not provide these because many years ago he did not know about your home (or you) or that someday you would have one of these devices, or how you might want to use it.

Here is what you can provide:



* The name (called the SSID) of your home WiFi router
* The password for your WiFi (which any visitor to your home will want to know)
* How many seconds you want it to sleep between readings
* The web address where you want it to send the readings


## When to configure it

The device you have in your hands was last used by a student in a Computer Science class at BYU and will already be configured to look for their WiFi router and it will fail to find it (of course) every time it wakes up. It will ignore this failure and go back to sleep.

So, before you use it you will need to configure it.


### How to configure it

Every time the device wakes up, it checks to see if you want to configure it. To let you know that, it flashes a blue LED three times. During that flashing, you must press the small round push button near the center of the printed circuit board.

If you don’t want to wait, you can remove the power and apply it again. Right after you apply power, it checks and blinks the light. That is a good time to press the button.

After you let go of the button, it will flash many more times and then wait for you. The wild flashing lets you know that the device has left off from its main program and has become a WiFi hotspot.

Use a laptop or other computer nearby and check for WiFi on it. You will see a new one, named something like Wovyn 16:2E:B3. Have your computer use that WiFi. It will not ask you for a password, but will pop open a “capture” window that prompts you for the information that it needs.

You will be able to select your home WiFi router from a list and give the password.

Next you will need to give it the web address where you want the information sent (see below).

Finally, it will ask you for the number of seconds to sleep between readings.

There are other possible options to configure but we won't use any of these in these lessons.


### What web address?

That is a good question.

We really need _two_ programs: 



1. Scott’s program, running inside the Wovyn device
2. A program that listens for sensor readings, running on a computer you control

The first program was written years ago and was etched into read-only memory and you know how to make it run (power it up) and configure it for your own use.

The second program is one that you will need to set up. You have to decide what you want this program to do. Your program will start every time it receives an event from the Wovyn device. What it does is up to you.


## Set up a pico to listen to the Wovyn device

You are familiar with web applications because you use web applications every day.

Listening to a Wovyn event is like being a web application, and that is the other side of the coin and is not generally easy. If you know how to set up a web application already, then you can do that.

A pico is a persistent computing object that handles web events in a natural way. You can set up your own pico engine, or you can use one set up and run by someone else.


### Using the Pico Labs Affiliate Network (PLAN)

This network gives you control of a pico running in the cloud (they call it a “personal agent”). You can sign up from the [PLAN index page](https://picolab.github.io/PLAN/). This will give you a page entitled “Manage applications” which allows you to manage your personal agent.

Install the “Manage webhooks” application in your personal agent.



1. Locate the box labeled “Add an app by URL:” and paste [this link](https://raw.githubusercontent.com/Picolab/PLAN/main/krl/io.picolabs.plan.webhook.krl) in the box showing “app URL” and then click the button labeled “Add”.
2. When the Manage applications page refreshes, you’ll find a link for “Manage webhooks” on which you should click
3. Enter an Event domain of your choice (such as Wovyn), an Event type of your choice (such as heartbeat), and click the Add button.
4. Hover your mouse over the “webhook” link, right click and click on “Copy Link Address”.
5. You can now paste that URL where the Wovyn device wants a web address to send its information. That will complete the configuration of the Wovyn device.


#### Seeing the information from the Wovyn device



1. Go back in your browser until you reach the Manage applications page.
2. Click on the “Manage logs” link
3. This will show you everything that your personal agent has seen in the last few hours
4. The second item will be an EVENT Wovyn:heartbeat showing a date and timestamp (in the Zulu time zone)
5. Click on it to see details
6. One of those details is a line “event added to schedule”
7. Hover the mouse over the JSON (starting with an opening curly brace) and notice the mouse pointer changes to a pointer finger
8. Click to pop up a formatted JSON which was sent to you by the Wovyn device
9. 
