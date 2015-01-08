if exists(':Tabularize')
    AddTabularPattern! colon /^[^:]*\zs:/
    AddTabularPattern! haskell_bindings /^[^=]*\zs=\ze[^[:punct:]]/
    AddTabularPattern! haskell_comments /--.*/l2
    AddTabularPattern! haskell_do_arrows / \(<-\|←\) /l0r0
    AddTabularPattern! haskell_imports /^[^(]*\zs(.*\|\<as\>.*/
    AddTabularPattern! haskell_pattern_arrows / \(->\|→\) /l0r0
    AddTabularPattern! haskell_types / \(::\|∷\) /l0r0
endif
