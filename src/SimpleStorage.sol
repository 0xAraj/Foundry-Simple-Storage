//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract SimpleStorage {
    mapping(address caller => uint favouriteNumber) private s_addressToNumber;

    function addFavouriteNumber(uint favouriteNumber) public {
        s_addressToNumber[msg.sender] = favouriteNumber;
    }

    function getFavouriteNumber() public view returns (uint) {
        return s_addressToNumber[msg.sender];
    }
}
