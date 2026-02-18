# <div align="center">senalvim</div>

<div align="center">

Senal's NeoVim configuration

</div>




## Why senalVIM has no typical neovim package manager?

Well, you may be asking, Senal, why there is no typical neovim package manager
for this build? Well, senalvim is not a really a neovim distribution of neovim
but it is a wrapper for neovim. 


The end result???? Performance.....

The package manager for senalvim is based on shell scripts. Essentially cloned into 
the right directory of neovim (Like it should be).


So where is the package manager at? Well it is in the `senalvim/shell-scripts`
directory... psst... eventually the new shell-scripts functionality is going 
to be documented soon.



## Running SenalVIM for developing purposes

In this section, we are going to be talking about how to run senalvim
for developing purposes:

### Using neovim version

```shell
nvim -u nvim/init.lua
```


## F+ keyboards for shortcuts in senalvim

In this section, we are going to be talking about the ascii communication
with senalvim. when it comes to the keyboards and ascii communication, the
innovation behind it is making custom keyboard only for specific use-cases
for senalvim. Inspired by the meme F25 key

Use Cases: 

- Search
- Find and Replace
- Find and Replace in Folder
- Running a program
- GIT commands


## Hardware that would support this:

That is a complete good question, but this part will come soon




## Keyboards that support senalvim

In this section, we are going to be talking about the keyboards that
support senalvim


- SteelSeries


## Keybindings in senalvim 

In this section, we are going to be talking about the keybindings in senalvim.

### lkj
Allow the ability to delete a line

### asd & enter
Allow the ability to save a file

### zxc & enter
Allow the ability to save a file and quit senalvim
