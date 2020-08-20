pragma solidity >=0.4.21 <0.7.0;

// imports

/**
 * Contrato para almacenar los balances del BlockdemyCoin
 *
 * // Balance del token
 * Address -> Cantidad
 *
 */
contract BlockdemyCoin {
    // Variables
    mapping(address => uint256) balances;

    // Constructor
    constructor() public {
        balances[msg.sender] = 1000;
    }

    // Métodos
    function send(address receiver, uint256 amount) public {
        require(balances[msg.sender] > amount);
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }

    function getBalance(address adr) public view returns (uint256) {
        return balances[adr];
    }
}
