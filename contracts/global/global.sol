pragma solidity ^0.8.0;

contract global {
    function coinbase() public view returns (address) {
        return block.coinbase;
    }

    function difficulty() public view returns (uint256) {
        return block.difficulty;
    }

    function gaslimit() public view returns (uint256) {
        return block.gaslimit;
    }

    function blockNumber() public view returns (uint256) {
        return block.number;
    }

    function timestamp() public view returns (uint256) {
        return block.timestamp;
    }

    function chainid() public view returns (uint256) {
        return block.chainid;
    }

    function basefee() public view returns (uint256) {
        return block.basefee;
    }
}
