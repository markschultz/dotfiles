#!/bin/sh

# unregister broken GHC packages. Run this a few times to resolve dependency 
# rot in installed packages. ghc-pkg-clean -f cabal/dev/packages*.conf also 
# works.
for p in `ghc-pkg check $* 2>&1 | grep problems | awk '{print $6}' | sed -e 's/:$//'`
do
    echo unregistering $p; ghc-pkg $* unregister $p
done
