Slightly useful function if you are doing some embedded code.  Copy the file into your .vimrc file to make it work.

Your commands are :Rebase, :Hex, :Hexp, :Bin, :Binp, and :Dec.  Use :Rebase when your cursor is over a number of any format, or just put the number as an argument, i.e.:

   >:Rebase 0b0010101

Then, move your cursor to a place where you want to insert the text (say, a hex version of that number), and type:

   >"hp

Also, you can use :Hexp or :Binp to replace the number your cursor is over with a hex or binary version.

# vim-Rebase
