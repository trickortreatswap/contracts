pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/BEP20.sol";

// GhoulToken with Governance.
contract GhoulToken is BEP20('Zombie Token', 'Zombie') {
    /// @notice Creates `_amount` token to `_to`. Must only be called by the owner (Gravediggers).
    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }
}