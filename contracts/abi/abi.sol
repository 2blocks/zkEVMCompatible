pragma solidity ^0.8.0;

contract ABI {
    function encode() public pure returns (bytes memory) {
        return abi.encode("Hi",2022);
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
