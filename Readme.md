# Direct Donation Platform

The **Direct Donation Platform** allows users to donate directly to a specific beneficiary's Ethereum address. Beneficiaries can then withdraw the donations made to them. This platform uses a smart contract deployed on the Ethereum blockchain and interacts with it via **Web3.js**.

## Features

- **Donations:** Users can make donations in Ether (ETH) directly to a specific beneficiary.
- **Withdrawal:** Beneficiaries can withdraw the donations they have received.
- **Transparency:** Users can view the total donations made to any beneficiary and the amount donated by each specific donor.
- **MetaMask Integration:** The platform interacts with MetaMask to connect users' Ethereum accounts and execute transactions.

---

## Requirements

- **MetaMask:** MetaMask should be installed in the browser to interact with the Ethereum network.
- **Ethereum Network:** You need to have access to an Ethereum network (mainnet or a testnet like Rinkeby or Ropsten) to test and interact with the contract.
- **Smart Contract Deployment:** The smart contract for direct donations should be deployed on an Ethereum network.

---

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/direct-donation-platform.git
   cd direct-donation-platform
   ```

2. **Open the `index.html` file in a browser:**

   Simply open the `index.html` file in your preferred browser that supports MetaMask. This will enable MetaMask integration, allowing you to interact with the smart contract.

---

## Usage

### 1. **Connect to MetaMask**

- Click the **"Connect MetaMask"** button to connect your Ethereum account.
- Ensure you have MetaMask installed and set up, and that you're connected to the Ethereum network (either mainnet or a testnet).

Once connected, the account address will be displayed on the page.

### 2. **Donate to a Beneficiary**

- Enter the Ethereum address of the **beneficiary** in the "Beneficiary Ethereum Address" input field.
- Enter the amount (in ETH) you wish to donate in the **"Amount to Donate"** input field.
- Click **"Donate"** to send the donation to the specified beneficiary.

The donation will be recorded on the blockchain, and the recipient's donation balance will be updated.

### 3. **Withdraw Donations (For Beneficiaries)**

If you are a beneficiary, click the **"Withdraw Donations"** button to withdraw the funds you have received. This will transfer the total donated funds to your Ethereum address.

### 4. **View Donation Information**

- The total donations for each beneficiary are displayed under **"Donation Information"**.
- The amount you've donated to a specific beneficiary will be shown as well, allowing for transparency.

---

## Smart Contract Details

The smart contract allows for direct donations between users and beneficiaries. The key functions are:

- **donate(address beneficiary):** Users can donate ETH to a specified beneficiary.
- **withdraw():** Beneficiaries can withdraw the funds they have received.
- **getTotalDonations(address beneficiary):** Fetches the total donations made to a given beneficiary.
- **getDonationFromDonor(address donor, address beneficiary):** Fetches the total amount donated by the current user to a specific beneficiary.

---

## Contract Deployment

To deploy the smart contract:

1. **Deploy the Smart Contract:**
   - Use **Remix IDE**, **Truffle**, or **Hardhat** to deploy the `DirectDonationPlatform` contract on an Ethereum network (either testnet or mainnet).
2. **Get Contract ABI and Address:**
   - After deployment, get the contract's ABI and address.
   - Replace the `contractABI` and `contractAddress` in the frontend `index.html` file with the actual values.

---

## Prerequisites

- **Node.js**: While the current version doesn't require Node.js, you may need it for further enhancements or if you want to add more advanced features.
- **MetaMask**: Ensure MetaMask is installed and properly configured.

---

## Contributing

Feel free to fork the repository and submit issues and pull requests. All contributions are welcome!

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Contact

If you have any questions or feedback, feel free to open an issue or reach out to us.

---

This README provides a basic overview of how the Direct Donation Platform works, how to deploy the smart contract, and how to use the frontend application for donations and withdrawals.
