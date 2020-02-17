
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

   function Rebase_Function(ArgString1, ArgString2)
      let NumString = a:ArgString1
      if empty(a:ArgString1)
         let NumString = a:ArgString2
      endif
      echo printf('\"h: 0x%04X    \"b: 0b%08b    \"d: %d', NumString, NumString, NumString)
      let @h = printf("0x%04X", NumString)
      let @b = printf("0b%08b", NumString)
      let @d = printf("%d", NumString)
   endfunction

   function Hex_Function (ArgString)
      let NumString = a:ArgString
      let @h = printf("0x%04X", NumString)
      normal viw"hp
   endfunction

   " test number 1234  0x1234
   function Bin_Function (ArgString)
      let NumString = a:ArgString
      let @b = printf("0b%08b", NumString)
      normal viw"bp
   endfunction

   command -nargs=? Rebase :call Rebase_Function(<q-args>,expand("<cword>"))
   command! -nargs=1 Hex :echo printf('0h%04X', <q-args>)
   command! Hexp :call Hex_Function(expand("<cword>"))
   command! -nargs=1 Bin :echo printf("%08B", <q-args>)
   command! Binp :call Bin_Function(expand("<cword>"))
   command! -nargs=1 Dec :echo printf('%d', <q-args>)


   " insert the above text into your .vimrc file
