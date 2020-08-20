pragma solidity >=0.4.21 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/BlockdemyCoin.sol";

contract TestBlockdemyCoin {
    function testInitialBalanceOfOwner() public {
        BlockdemyCoin coin = BlockdemyCoin(DeployedAddress.BlockdemyCoin());

        uint256 expectedBalance = 1000;

        Assert.equal(
            meta.getBalance(tx.origin),
            expected,
            "First account does not have a 1000 coins"
        );
    }
}
