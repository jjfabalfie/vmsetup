#                                 The gist of this script
- - -
This script basically is going to add your ssh key to the machine you provide with and will then use that key to sign into the machine as root because of certain complications such as sudouers. I will work on trying to not have to run it as root as it may not be the most secure way. It will then install nala a better version of apt in my opinion and then use nala to grab updates and them do updates. It will then upgrade many packages it sees has newer versions. Finally It will install docker.io and docker-compose a plugin for docker and will test it's install by running a hello-world image. Then It will logout.
##                                     How to Install
- - -
You should be able to just clone this repo to your PC and then just execute it with the comment at the top of the script. Another way is create a file called "vmsetup.sh"  and then copy and paste the file contents. If there's anything you want to change then feel free.
##                                  Creating SSH Key
- - -
If you don't have any ssh keys then you will need to run the command `ssh-keygen` and any prompts please just click enter and leave them blank. It is preferred you have a secure key and make it more encrypted as there wont be a password for it.

