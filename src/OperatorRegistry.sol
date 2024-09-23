// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

/**
 * @title opReg
 * @dev allow operators to register their wallets for the EIGEN allocation
 */
contract OperatorRegistry {
    // event for EVM logging
    event Registered(address indexed operator, address indexed operatorMessage);
    function Register(address registeredWallet, string memory operatorMessage) public  {
        //I agree to have my operator EIGEN allocation be claimed from the registered wallet in this transaction.
        bytes32 hash = keccak256(abi.encodePacked(operatorMessage));
        require(hash == 0x81b5cbe7d4c48d6a6071afd9ebb1ab3c45344dc8be1cde15e20cd2220ca7209c, "please refer to the template you should sign");
        emit Registered(msg.sender,registeredWallet);
        }
    }