# EFTSommelier

The Escape from Tarkov Sommelier Application was developed in order to help newer players to the Escape from Tarkov video game understand the ammunition mechanic in a simple way. 

## Installation
The program runs in the terminal using the ruby environment. 

```zsh 
rbenv install 2.7.0
```

## Code Style 
Standard ruby syntax

## Software Development Plan 

1. Overview 

As stated above this program was developed with new players in mind. The mechanics of a game such as tarkov are quite complex and the information delivered by my application in a clear and concie format can help the new players win more firefights as well as help veteran players as an easy to use quick reference guide. 

2. Goals and Scope

the scope of this application was to provide an easy to use program that can quickly display information about ammunition in the Escape from Tarkov title. The reason for developing this is that the game itself does not really provide meaningful information on the subject and it has been left to the community to determine the values outlined in the app. The target audience for this appilcation is new and veteran players, new players will find it useful to learn the ammo mechanics in game and veteran players will find use in the quick acces information. 

For instance a new player may not know anything about the ammunition mechanics and think the game is broken, where it may have just been down to using poor ammunition against a geared player. 

A veteran player may need a handy tool to find out information on damage and armour penetration values quickly.

## Features

The application was designed with the end user in mind. 

the menus were created to be displayed in a way where an end user could filter down through weapon type,    caliber and then by type printing out a concise statistics readout at the end. 

by encompassing the code in a while loop we can ensure the user then can make use of the return to top feature "Would you like to know more?" to return to the top menu and select from  different ammunition type. 

The user interface was implemented using a gem called CLI-UI and essentially it mitigates user fault by not allowing a user to enter an incorrect input.

## Outline 

The application is designed with simplicity in mind essentially only requiring two keys Up and Down to operate the app when it is running.

The application runs using the terminal and as such requires a number of installations to enable the environment. 

Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

```
with homebrew installed we can now install our version manager rbenv

```
brew install rbenv
```
using rbenv we can then install ruby.

```
rbenv install 2.7.0
```

## Version control 

The application is version controlled using github. 

```
github.com/martink007/EFTSommelier
```
## Acknowledgements

the application was made with a lot of help from Bruce M. If im honest he was instrumental in the development process and without the help none of this could be possible. 

the application makes use of a number of gems 

CLI-UI 
```
gem install "cli-ui"
```

this was used to give the user an interface with which to move through the data.

PASTEL 

```
gem install "pastel"
```
This gem is used to colour the ascii title screen on launch.

TTY-Font 
```
gem install "tty-font"
```
this gem is required to create the ASCII title screen. 

COLORIZE

```
gem install "colorize"
```
this gem is used to colour the output text for the end user to distinguish between the different values.







