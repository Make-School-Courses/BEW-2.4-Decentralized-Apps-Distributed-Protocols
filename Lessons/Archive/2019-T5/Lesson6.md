# 📜 Day 6: Architecting & Implementing Token Based Applications in Node.js

### ⏱ Agenda

1. [🏆 **5m**: Learning Objectives](#%F0%9F%8F%86-5m-Learning-Objectives)
2. [📖 **20m**: Overview](#%F0%9F%93%96-20m-Overview)
3. [🌴 **10m**: Break](#%F0%9F%8C%B4-10m-Break)
4. [💻 **60m**: In Class Activity](#%F0%9F%92%BB-60m-In-Class-Activity)
5. [📚 Resources & Credits](#%F0%9F%93%9A-Resources--Credits)

## 🏆 **5m**: Learning Objectives

1. Analyze the full-stack ecosystem that enables the development of smart contracts and distributed applications in Node.
2. Identify and leverage existing boilerplate applications to establish a strong initial foundation in projects.
3. Propose, design, and plan your own token based coin using Truffle, Ganache, and Drizzle.

## 📖 **20m**: Overview

### Why You Should Know This

Frameworks boost programmer productivity by initializing a standards-based foundation with which to develop a product.

Truffle Suite provides the scaffolding to our projects, similar to [Create React App](https://github.com/facebook/create-react-app) or [Django](https://djangoproject.com).

---

<p align="center"><img src="../Resources/truffle.svg" height="100"><br><a href="https://www.trufflesuite.com/docs/truffle/quickstart"><strong>🔗 Quickstart</strong></a></p>

A **world class development environment**, **testing framework**, and **asset pipeline** for blockchains using the Ethereum Virtual Machine (EVM), aiming to make life as a developer easier.

### Truffle Features

- Built-in **smart contract compilation**, **linking**, **deployment** and **binary management**.
- **Automated contract testing** for rapid development.
- **Scriptable, extensible deployment** and **migrations** framework.
- **Network management**: deploy to any number of public and private networks.
- **Package management** via `ethpm` and `npm`, using the `ERC190` standard.
- **Interactive console** for direct contract communication.
- **Configurable build pipeline** with support for tight integration.
- **External script runner** that executes scripts within a Truffle environment.

---

<p align="center"><img src="../Resources/ganache.svg" height="100"><br><a href="https://www.trufflesuite.com/docs/ganache/quickstart"><strong>🔗 Quickstart</strong></a></p>

### Ganache Features

Ganache is a **personal blockchain for Ethereum development** you can use to deploy contracts, develop your applications, and run tests.

It is available as **both a desktop application** as well as a **command-line too**l *(formerly known as the TestRPC)*.

---

<p align="center"><img src="../Resources/drizzle.svg" height="100"><br><a href="https://www.trufflesuite.com/docs/drizzle/quickstart"><strong>🔗 Quickstart</strong></a></p>

Drizzle is a **collection of front-end libraries that make writing dapp front-ends easier and more predictable**.

Takes care of synchronizing contract data, transaction data, and more. Things stay fast because you declare what to keep in sync.

#### Drizzle Features

- **State, Events and Transactions**: Fully reactive contract data
- **Declarative**: Doesn't waste time on valuable cycles if data is unneeded.
- **Flexible**: Maintains access to underlying functionality.
    - Web3 and your contract's methods are still there, untouched.

---

<p align="center"><img src="../Resources/openzeppelin.png" width="400"><br><a href="https://docs.openzeppelin.org/v2.3.0/get-started"><strong>🔗 Quickstart</strong></a></p>



OpenZeppelin is a library for secure smart contract development. It provides implementations of standards like ERC20 and ERC721 which you can deploy as-is or extend to suit your needs, as well as Solidity components to build custom contracts and more complex decentralized systems.

### OpenZeppelin Features

- **Focused on Security**: Using industry standard contract security patterns and best practices, develop applications with reduced risk of vulnerabilities using standard, tested, community-reviewed code.
- **Compatibility**: Runs on any EVM-compatible blockchain.
- **Modular Approach**: Simple code, only basics. Easy collaboration and auditing.
- **Open Source**: Community driven. Used by multiple organizations and individuals.


## 🌴 **10m**: Break

## 💻 **60m**: In Class Activity

### Full Stack dApp

Create the initial architecture for your project during today's class.

#### Requirements (Due End of Class)

1. **Choose Your Own Adventure**: Solo or pair dApps project?
      1. **Pairs**: Generate ideas.
2. Create a new GitHub repo and add it to the [Course Tracker](https://make.sc/trackbew2.4)
      1. Clone the repo locally and create an `example` branch.
      2. **Pairs**: Invite partner as a collaborator.
3. Use the following [Guide to Writing and Testing Real World Contracts](https://hashnode.com/post/the-2018-guide-to-writing-and-testing-real-world-crowdsale-contracts-cjcs8dfes00apmdwthw03c2jq) to get set up with a project that will serve as the structure for your end-of-term project.
      1. Comment out `Migrations.sol` and the first migration in the migrations folder.
4. **Stretch Challenge**: Invent and develop an `ERC721` token contract with the Truffle Suite.
5. **Stretch Challenge**: Add OpenZeppelin
      1. Get it working within the `example` branch.
      2. Write tests for the `Addition.sol` contract.

## 📚 Resources & Credits

- **[Truffle Documentation](https://www.trufflesuite.com/docs)**
    - [Announcing Our Fully Featured, Portable Solidity Debugger](https://www.trufflesuite.com/blog/announcing-full-portable-solidity-debugger)
    - [Variable Inspection: Going Deeper with the Truffle Solidity Debugger](https://www.trufflesuite.com/tutorials/debugger-variable-inspection)
- **[Ganache Documentation](https://www.trufflesuite.com/docs/ganache/overview)**
    - [Linking a Truffle Project](https://www.trufflesuite.com/docs/ganache/truffle-projects/linking-a-truffle-project)
- **[Drizzle Documentation](https://www.trufflesuite.com/docs/drizzle/overview)**
    - [Drizzle and Contract Events](https://www.trufflesuite.com/tutorials/drizzle-and-contract-events)
- **[OpenZeppelin Documentation](https://docs.openzeppelin.org/v2.3.0/get-started)**
    - [ERC-721 on OpenZeppelin](https://docs.openzeppelin.org/v2.3.0/api/token/erc721)
    - [OpenZeppelin on GitHub](https://github.com/OpenZeppelin/openzeppelin-solidity)
    - [OpenZeppelin Community Forum](https://forum.zeppelin.solutions/)
