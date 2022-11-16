pragma solidity ^0.8.0;

contract TX {

    function sender() public view returns (address) {
        return msg.sender;
    }

    function origin() public view returns (address) {
        return tx.origin;
    }

    function gas() public view returns (uint256) {
        return tx.gasprice;
    }

}
