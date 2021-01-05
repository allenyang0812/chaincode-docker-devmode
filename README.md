## user guide

### Prerequisites
1. docker installed
2. docker-compose installed
3. hyperledger fabric v1.4.8 docker images

###  1.start network.
```
$ bash start.sh
```

###  2.access to chaincode container, start chaincode.
```
$ docker exec -it chaincode bash
jump to smart contract path.
$ cd chaincode/chaincodename
$ go build -o chaincodeName
$ CORE_PEER_ADDRESS=peer:7052 CORE_CHAINCODE_ID_NAME=mycc:0 ./chaincodeName
```

### 3. access to cli to debug chaincode.
```
$ peer chaincode install -p chaincodedev/chaincode/chaincodeName/ -n mycc -v 0
# this chaincode init functuin no args
$ peer chaincode instantiate -n mycc -v 0 -c '{"Args":["init"]}' -C myc
# debug function ...
$ peer chaincode invoke ...
```