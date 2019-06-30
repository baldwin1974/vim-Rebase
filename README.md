Slightly useful function if you are doing some embedded code.  Copy the file into your .vimrc file to make it work.

Your commands are :Rebase, :Hex, :Bin, and :Dec, but the first is the most useful of the four.  Use it when your cursor is over a number of any format, or just put the number as an argument, i.e.:

   >:Rebase 0b0010101

Then, move your cursor to a place where you want to insert the text (say, a hex version of that number), and type:

   >"hp


# vim-Rebase
