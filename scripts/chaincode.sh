peer chaincode install -p chaincodedev/chaincode/smartcontract/chainnews/ -n mycc -v 0
peer chaincode instantiate -n mycc -v 0 -c '{"Args":["init"]}' -C myc
