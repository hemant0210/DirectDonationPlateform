// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DirectDonationPlatform {

    // Mapping to store total donations for each beneficiary
    mapping(address => uint256) public beneficiaryDonations;
    // Mapping to store the donation history of each donor (for transparency)
    mapping(address => mapping(address => uint256)) public donorToBeneficiary;

    // Event to log donations
    event DonationMade(address indexed donor, address indexed beneficiary, uint256 amount);
    event FundsWithdrawn(address indexed beneficiary, uint256 amount);

    // Function to donate to a specific beneficiary
    function donate(address beneficiary) external payable {
        require(msg.value > 0, "Donation must be greater than zero");
        require(beneficiary != address(0), "Invalid beneficiary address");

        // Increase the beneficiary's donation balance
        beneficiaryDonations[beneficiary] += msg.value;

        // Log the donation for transparency
        donorToBeneficiary[msg.sender][beneficiary] += msg.value;

        // Emit the donation event
        emit DonationMade(msg.sender, beneficiary, msg.value);
    }

    // Function for beneficiaries to withdraw their donations
    function withdraw() external {
        uint256 amount = beneficiaryDonations[msg.sender];
        require(amount > 0, "No funds available to withdraw");

        // Reset the donation balance for the beneficiary to prevent re-entrancy
        beneficiaryDonations[msg.sender] = 0;

        // Transfer the funds to the beneficiary
        payable(msg.sender).transfer(amount);

        // Emit the withdrawal event
        emit FundsWithdrawn(msg.sender, amount);
    }

    // Function to get the total amount donated to a specific beneficiary
    function getTotalDonations(address beneficiary) external view returns (uint256) {
        return beneficiaryDonations[beneficiary];
    }

    // Function to get the total amount donated by a specific donor to a specific beneficiary
    function getDonationFromDonor(address donor, address beneficiary) external view returns (uint256) {
        return donorToBeneficiary[donor][beneficiary];
    }
}
