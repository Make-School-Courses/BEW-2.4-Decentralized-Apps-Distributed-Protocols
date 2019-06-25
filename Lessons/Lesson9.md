# 📜 Day 9: Deployments via Truffle

## ⏱ Agenda

1. [⏱ Agenda](#%E2%8F%B1-Agenda)
2. [🏆 [5m] Learning Objectives](#%F0%9F%8F%86-5m-Learning-Objectives)
3. [📖 [15m] Overview](#%F0%9F%93%96-15m-Overview)
4. [💻 [60m] In Class Activity](#%F0%9F%92%BB-60m-In-Class-Activity)
5. [🌴 [10m] BREAK](#%F0%9F%8C%B4-10m-BREAK)
6. [📖 [20m] Code Walkthrough](#%F0%9F%93%96-20m-Code-Walkthrough)
7. [📚 Resources & Credits](#%F0%9F%93%9A-Resources--Credits)

## 🏆 [5m] Learning Objectives

1. Identify and describe the process required to obtain test Ether in order to deploy a Smart Contract on the Rinkeby network.
2. Deploy a Smart Contract to the Rinkeby test network.
3. Build a instant, customizable marketplace for your Smart Contract's items, collectibles, or other `ERC721` assets.

## 📖 [15m] Overview

Today's class connects several topics discussed during our course, including:

- Deploying a Smart Contract to a test network.
- Using MetaMask to interface with a test network.
- Using a Faucet to receive testnet Ether.
- Using a deployed Smart Contract in to facilitate distribution through a popular ÐApps marketplace called [OpenSea].

## 💻 [60m] In Class Activity

**Complete parts 1 through 7 of the [OpenSea Developer Tutorial]**. _You may skip Step 6, which requires deployment to the main Ethereum network._

### Prerequisites

You'll need the following packages installed to complete today's in class activity:

- [Node Version Manager]
    - **PROTIP**: Be sure to follow the instructions that appear in your console after installation!

### Tips & Tricks

1. Begin by cloning the [opensea-creatures] repo locally.
2. Run `cp .env.sample .env` to copy the sample `.env` file.
3. In `.env`, fill in your key for Infura in `INFURA_KEY`, your MetaMask mnemonic in `MNEMONIC`, etc. Use the instructions in the [opensea-creatures] repo to learn more!
4. Use the exported constants when executing commands by running `source .env` in your active terminal window.

### Stretch Challenge

If you finish early, examine the [opensea-creatures] codebase. Dig in to the Smart Contract implementation and the custom `truffle.js` settings.

  **How could you use this project to assist you in deploying your own assets to a test network? To a ÐApps marketplace? To the Ethereum mainnet?**

## 🌴 [10m] BREAK

## 📖 [20m] Code Walkthrough

At the end of class, walk through the tutorial code with students step by step.

Ask for questions and highlight difficult areas in the tutorial experience.

## 📚 Resources & Credits

- **[OpenSea Developer Tutorial]**: Simple tutorial for a customizable marketplace for buying and selling on OpenSea.
- **[opensea-creatures]**: This is a very simple sample `ERC721` for the purposes of demonstrating integration with the OpenSea marketplace. We include a script for minting the items.

[OpenSea Developer Tutorial]: https://docs.opensea.io/docs/getting-started
[opensea-creatures]: https://github.com/ProjectOpenSea/opensea-creatures
[Node Version Manager]: https://github.com/nvm-sh/nvm#installation-and-update
[OpenSea]: https://opensea.io
