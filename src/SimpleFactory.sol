//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function deploySimpleStorage() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function ssAddFavouriteNumber(
        uint indexOfContract,
        uint favouriteNumber
    ) public {
        SimpleStorage simpleStorage = listOfSimpleStorageContracts[
            indexOfContract
        ];
        simpleStorage.addFavouriteNumber(favouriteNumber);
    }

    function ssGetFavouriteNumber(
        uint indexOfContract
    ) public view returns (uint) {
        SimpleStorage simpleStorage = listOfSimpleStorageContracts[
            indexOfContract
        ];
        uint favouriteNumber = simpleStorage.getFavouriteNumber();
        return favouriteNumber;
    }
}
