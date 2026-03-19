# What is this?

This is a small bash script to create a bash script with a given name, initialize it with a shebang (#!/usr/bin/env bash) and inmediately set the executable bits to the script.

# Why bother making it?

While watching the 7+ hours bash course from YSAP (You Suck At Programming a.k.a. Dave Eddy a.k.a. @bahamas10), I was getting a little bit tired of seeing him create a script, add the shebang, save, exit and make it executable, so I decided to create a script that creates, initializes and set the executable bits to a bash script to have it ready. Matter of fact, I'm still watching the course on YT from my phone as I'm typing this.

# Are you expecting everyone to use it?

Not really, old habits die hard, and this is not an innovative tool, but if I can help someone save some time (even if 2 seconds) on creating a tool that does it and on creating a ready-to-script-and-run file, then it's worth it.

# Did you actually wrote this from your phone?

Yes. I wrote the script, makefile and readme from my phone by SSH-ing on my personal dev VM.

I don't recommend it though.

# How can I install it and use it?

You need bash, git and make. You clone the repository, then go to the repository directory and run:

```
# make install
```

\(Notice the "#" on the shell, to install the script you must do it as root\)

After that, any user can call the command (as long as they can create the script on the directory they're placed and any other file or directory with the same name doesn't exist\):

```
$ touch-bash-script <name of the script>
```

The extension is optional, you can set it on the name.

