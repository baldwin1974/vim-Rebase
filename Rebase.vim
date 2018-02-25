
   " Unsigned hex, decimal, and binary conversion
   "
   "        (1)  :Hex {number}
   "        (2)  :Bin {number}
   "        (3)  :Dec {number}
   "        (4)  :Rebase {optional: number}
   "
   " Rebase works on the number below the cursor, or
   " with a single argument separated by a space.
   " It will also print the number to the "h, "b, and "d
   " registers with the hex, binary, and decimal conversions,
   " respectively. For example in normal mode, type "bp 
   " to insert the converted number into the buffer.

   command! -nargs=1 Hex :echo printf('0h%04X', <q-args>)
   command! -nargs=1 Bin :echo printf("%08B", <q-args>)
   command! -nargs=1 Dec :echo printf('%d', <q-args>)

   function Rebase_Function(ArgString1, ArgString2)
      let NumString = a:ArgString1
      if empty(a:ArgString1)
         let NumString = a:ArgString2
      endif
      echo printf('\"h: %04X    \"b: %08b    \"d: %d', NumString, NumString, NumString)
      let @h = printf("%X", NumString)
      let @b = printf("%b", NumString)
      let @d = printf("%d", NumString)
   endfunction
   " test string: 0xA034

   command -nargs=? Rebase :call Rebase_Function(<q-args>,expand("<cword>"))


   " insert the above text into your .vimrc file
