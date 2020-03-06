#! /bin/bash

wget https://bitcoin.org/bin/bitcoin-core-0.19.0.1/bitcoin-0.19.0.1-x86_64-linux-gnu.tar.gz
tar xf bitcoin-0.19.0.1-x86_64-linux-gnu.tar.gz
cd bitcoin-0.19.0.1
cp -r * /
bitcoin-cli getnewaddress "" legacy
bitcoin-cli backupwallet backup.dat
cat backup.dat
bitcoind
