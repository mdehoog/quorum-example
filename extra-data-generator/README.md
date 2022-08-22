# extra-data-generator

Generates a value for the `extraData` key for a Quorum `genesis.json` configuration. Also outputs validator private keys.

### Usage

Example:
```bash
go run . 4
```
where `4` is the number of validator keys to generate.

Example output:

```bash
Extra data: 0xf87aa011bbe8db4e347b4e8c937c1c8370e4b5ed33adb3db69cbdb7a38e1e50b1b82faf85494ceeaa3d0819f54dfb1ce40a8df075245cc4529b2944fbf705d16ba5149481032c99a3a3e55fe7e42eb947e5243ab56d45d4788f0cdc839b60e734f3f27b39423d1ab1ab3db4845547619233d291255fd6c56f1c080c0
Private key: 2a585eef0e42023c7129d429f85891cee3dafeac74d64a3860b510f9646bba04
Private key: 47a42e0406eb46614d205ea7838f8f70a255f33d9b60de7499cc72206717c6d1
Private key: 3aaef8278bcf0a647de82a4786077cc8883dfec85eea072162904a8543f57a91
Private key: 21b443812ecfc65e9a095e22a3dd45cfe6489de1eb216cc2c5e58eea672e26ce
```
