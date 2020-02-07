pragma solidity ^0.5.0;

/**
 * @title KV
 * @dev Key-Value Storage.
 */
contract KV {
    struct kvData {
        string key;
        string value;
    }

    mapping(string => kvData) kvDataIndex;

    /**
     * @dev Set the key and value.
     */
    function setInfo(string memory _key, string memory _value) public {
        kvDataIndex[_key].key = _key;
        kvDataIndex[_key].value = _value;
    }

    /**
     * @dev Get the value from a key.
     */
    function getInfo(string memory _key) public view returns(string memory) {
        return kvDataIndex[_key].value;
    }
}
