#!/bin/bash

# remove all install GHC/cabal packages, leaving ~/.cabal binaries and docs in 
# place. When all else fails, use this to get out of dependency hell and start 
# over.
read -p 'erasing all your user ghc and cabal packages - are you sure (y/n) ? ' ans
test x$ans == xy && ( \
    echo 'erasing directories under ~/.ghc'; rm -rf `find ~/.ghc -maxdepth 1 type d`;\
    echo 'erasing ~/.cabal/lib'; rm -rf ~/.cabal/lib; \
    )
