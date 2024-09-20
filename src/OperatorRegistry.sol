// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

/**
 * @title opReg
 * @dev allow operators to regester their wallets for the EIGEN allocation
 */
contract OperatorRegistry {
    // event for EVM logging
    event registered(address, address);
    function register(address registerdWallet, string memory asciiMessage) public  {
        // placeholder message "I agree to have my operator/staker EIGEN allocation be claimed from the registered wallet in this transaction."
        bytes32 hash = keccak256(abi.encodePacked(asciiMessage));
        require(hash == 0x368de17c69b78e729e54bba48c86e7247b68db41edbd20a40120cd033c173ec0, "please refer to the template you should sign");
        emit registered(msg.sender,registerdWallet);
        }
    }