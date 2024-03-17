// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract A{
    uint public count;

    event Sender(
        address _msgsender,
        address _txorigin
    );

    function inc() public{
        count ++;
        emit Sender(msg.sender, tx.origin);
    }

}

contract B{
    A public a;

    constructor(address _a){
        a = A(_a);
    }

    function increase() public{
       a.inc();
    }
}
