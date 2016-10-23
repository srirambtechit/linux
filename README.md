# linux-scripting
(Uni/Linu)x  shell scripting tutorial and example codes


## Using vi as a hex editor
Sometimes I find it useful to switch to hex mode when editing a file in vi.

So, open a file in vi as usual. To switch into hex mode hit escape and type:

<b>:%!xxd</b>

And when your done and want to exit from hex mode hit escape again and type:

<b>:%!xxd -r</b>

Okay, so this isn’t actaully switching to vi’s ‘hex mode’; vi doesn’t have one. What the above actually does is to stream vi’s buffer through the external program ‘xxd’.
