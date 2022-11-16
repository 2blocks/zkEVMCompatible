pragma solidity ^0.8.0;

contract crypto {
    
    function Keccak256(bytes memory a) public pure returns (bytes32) {
        return keccak256(a);
    }

    function Sha256(bytes memory a) public pure returns (bytes32) {
        return sha256(a);
    }

    function Ripemd160(bytes memory a) public pure returns (bytes32) {
        return ripemd160(a);
    }

    function ecRecover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            assembly {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0));
        }
    }
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address) {
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return (address(0));
        }
        if (v != 27 && v != 28) {
            return (address(0));
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0));
        }

        return (signer);
    }
}