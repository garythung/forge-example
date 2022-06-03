// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.10;

import "solmate/tokens/ERC20.sol";

contract Contract is ERC20("Token", "TKN", 18) {
    function mint(address _recipient, uint256 _amount) public {
        _mint(_recipient, _amount);
    }
}
