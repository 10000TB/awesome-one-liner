<p align="center">
  <img src="https://github.com/10000TB/Awesome-One-Liner/blob/master/resources/imgs/awesome-one-liners-logo.png" />
</p>

A curated collections of awesome one-line commands/scripts to do all kinds of things like environment setups, solving a coding puzzles, tools installations, filesystem inspection, and more

# Getting started

Copy and run, that's it :-).

Control-F to search by keyword to find whatever you need.

# One liners
[docker](#docker)

## Docker

- [x] install docker
`$ curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh`

## Bash
- [x] Generate a sequence of numbers

`$ for i in {1..10}; do echo $i; done`

`$ for i in {2..20};do echo $i; done`
  
  
- [x] Run multiple commands in one sudo

`sudo -s <<< "echo hehe; echo hehe"`

`sudo -s <<< "touch newfile.txt; echo 'hey' >> newfile.txt; cat newfile.txt"`

`sudo -s <<< "apt update -y && apt upgrade -y"`

explanation: run `sudo -h` to see help message. There is one option `s`, which is `-s, --shell                 run shell as the target user; a command may also be specified`, which lets you run shell command as sudo. Normally we can chain commands using `;`, so we can run multiple commands as target user `sudo`.
