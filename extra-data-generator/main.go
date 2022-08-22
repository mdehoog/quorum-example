package main

import (
	"encoding/hex"
	"flag"
	"fmt"
	"github.com/ethereum/go-ethereum/consensus/istanbul/testutils"
	"github.com/ethereum/go-ethereum/crypto"
	"strconv"
)

func main() {
	flag.Parse()
	count, _ := strconv.Atoi(flag.Arg(0))
	if count < 1 {
		count = 1
	}
	genesis, keys := testutils.GenesisAndKeys(count, true)
	fmt.Printf("Extra data: 0x%s\n", hex.EncodeToString(genesis.ExtraData))
	for _, key := range keys {
		fmt.Printf("Private key: %s\n", hex.EncodeToString(crypto.FromECDSA(key)))
	}
}
