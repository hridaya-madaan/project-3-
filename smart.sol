// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {

    uint256 public value;

    // Using require() to validate an input
    function setValue(uint256 _value) public {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
    }

    // Using assert() to check for invariants
    function checkInvariant() public view returns (bool) {
        assert(value >= 0);
        return true;
    }

    // Using revert() to handle an error condition
    function resetValue() public {
        if (value == 0) {
            revert("Value is already zero");
        }
        value = 0;
    }

    // Additional function to demonstrate revert() with condition
    function safeDivide(uint256 _divisor) public view returns (uint256) {
        if (_divisor == 0) {
            revert("Cannot divide by zero");
        }
        return value / _divisor;
    }
}
