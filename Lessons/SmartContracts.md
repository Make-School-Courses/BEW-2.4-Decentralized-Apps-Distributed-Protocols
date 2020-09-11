# ⛓ Developing Smart Contracts in Python

<!-- > -->

<!-- omit in toc -->
## ⏱ Agenda

- [[**02m**] 🏆 Objectives](#02m-%f0%9f%8f%86-objectives)
- [[**25m**] ☀️ Warm Up: DApp Developer Roadmap](#25m-%e2%98%80%ef%b8%8f-warm-up-dapp-developer-roadmap)
- [[**10m**] 📖 TT: Introduction to Brownie](#10m-%f0%9f%93%96-tt-introduction-to-brownie)
- [[**15m**] 💻 Activity: Install Brownie](#15m-%f0%9f%92%bb-activity-install-brownie)
- [[**10m**] 📖 TT: Project Structure](#10m-%f0%9f%93%96-tt-project-structure)
- [[**15m**] 💻 Activity: Common Brownie Commands](#15m-%f0%9f%92%bb-activity-common-brownie-commands)
- [[**10m**] 📖 TT: Introduction to the Console](#10m-%f0%9f%93%96-tt-introduction-to-the-console)
- [[**10m**] 🌴 BREAK](#10m-%f0%9f%8c%b4-break-docsify-ignore)
- [[**20m**] 💡Tutorial: Your First Token (Part 1 of 2)](#20m-%f0%9f%92%a1tutorial-your-first-token-part-1-of-2)
- [[**05m**] 💬 Check In: Tutorial Q&A (Part 1 of 2)](#05m-%f0%9f%92%ac-check-in-tutorial-qa-part-1-of-2)
- [[**20m**] 💡Tutorial: Your First Token (Part 2 of 2)](#20m-%f0%9f%92%a1tutorial-your-first-token-part-2-of-2)
- [[**05m**] 💬 Check In: Tutorial Q&A (Part 2 of 2)](#05m-%f0%9f%92%ac-check-in-tutorial-qa-part-2-of-2)
- [[**03m**] 🌃 After Class: Read the Docs](#03m-%f0%9f%8c%83-after-class-read-the-docs)

<!-- > -->

## [**02m**] 🏆 Objectives

1. Illustrate course progress using the DApps developer roadmap.
1. Install and configure a local Python environment suitable for writing DApps.
1. Compile your first smart contract using the Brownie framework.

<!-- > -->

## [**25m**] ☀️ Warm Up: DApp Developer Roadmap

Review the DApps developer roadmap with students.

![DApp Developer Roadmap](https://raw.githubusercontent.com/thecryptoshed/eth-dapp-developer-roadmap/master/dapp-developer-roadmap.png)

In breakout rooms (10 minutes), ask students to **identify where we are as a class on the roadmap**. When the breakout ends, use the remaining time to discuss and respond to student's answers.

<!-- > -->

## [**10m**] 📖 TT: Introduction to Brownie

Brownie is a **Python-based development and testing framework for smart contracts** targeting the Ethereum Virtual Machine.

### Use Cases

- **Deployment**: Automate the deployment of many contracts onto the blockchain, and any transactions needed to initialize or integrate them.
- **Interaction**: Write scripts or use the console to interact with your contracts on the mainnet, or for quick testing in a local environment.
- **Debugging**: Get detailed information when a transaction reverts, to help you pinpoint the issue quickly.
- **Testing**: Write unit tests in python and evaluate test coverage based on stack trace analysis. We make no promises.

### Features

- Full support for [Solidity](https://github.com/ethereum/solidity) and [Vyper](https://github.com/vyperlang/vyper)
- Contract testing via [pytest](https://github.com/pytest-dev/pytest), including trace-based coverage evaluation
- Property-based and stateful testing via [hypothesis](https://github.com/HypothesisWorks/hypothesis/tree/master/hypothesis-python)
- Powerful debugging tools, including python-style tracebacks and custom error strings
- Built-in console for quick project interaction
- Support for [ethPM](https://www.ethpm.com/) packages

## [**15m**] 💻 Activity: Install Brownie & Ganache

### Step 1: Install Prerequisites

**_You only need to run these commands once per computer._**

1. You must have XCode installed, along with the command line tools. To install the XCode command line tools, run `xcode-select --install` in your Terminal.
1. You must use Node v12 in order to execute `ganache-cli`. Check your Node version using `node -v`, then follow the applicable step below:
   1. **If `node -v` returns `12`**:
      1. Run `npm install -g ganache-cli` to install Ganache globally.
   1. **Else**:
      1. `nvm install 12`
      1. `nvm use 12 && npm install ganache-cli -g`
1. Run `pip3 install eth-brownie` to install Brownie globally.

### Step 2: Create First Project

**_You only need to run these commands once per project._**

#### Command List

```bash
$ cd ~/dev

$ brownie bake token
Brownie v1.11.2 - Python development framework for Ethereum

Downloading from https://github.com/brownie-mix/token-mix/archive/master.zip...
100%|█████████████████████████████████████████████████████████████████████████████| 9.13k/9.13k [00:00<00:00, 2.60MiB/s]
SUCCESS: Brownie mix 'token' has been initiated at /Users/dani/dev/token

$ code token
```

#### Command Description

1. Navigate to the directory where you keep your projects.
1. Run `brownie bake token` to create your first project.
1. Run `code token` or `atom token` to open the project directory in your IDE.
1. **Wait for further instruction.**

<!-- > -->

## [**10m**] 📖 TT: Project Structure

### Project Structure

Each Brownie project uses the following structure:

- `contracts/`: Contract sources
- `interfaces/`: Interface sources
- `scripts/`: Scripts for deployment and interaction
- `tests/`: Scripts for testing the project

The following directories are also created, and used internally by Brownie for managing the project.  **You should not edit or delete files within these folders.**

- `build/`: Project data such as compiler artifacts and unit test results
- `reports/`: JSON report files for use in the GUI

## [**15m**] 💻 Activity: Common Brownie Commands

**In the project you just created, run:**

```bash
brownie console
```

**Discuss and write down the answers to following questions**:

- Have you seen similar consoles in the past?
- What is the purpose of this console?
- How to you exit this console?

**After exiting the console, run this command:**

```bash
brownie compile
```

**What did this command do? Why is it important?**


## [**10m**] 📖 TT: Introduction to the Console

Brownie’s console provides a simple way to perform on-the-fly testing and debugging, as well as interacting with contracts on a local or remote blockchain.

Check out this quick video for an example of the console's functionality:

<iframe width="680" height="382" src="https://www.youtube.com/embed/NYBJwGqa0-o" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## [**10m**] 🌴 BREAK {docsify-ignore}

<!-- > -->


## [**20m**] 💡Tutorial: Your First Token (Part 1 of 2)

In a brand new folder, complete the steps described in [Getting Started With Brownie (1 of 2)](https://medium.com/better-programming/getting-started-with-brownie-part-2-615a1eec167f), which will **walk you through creating your first token** using the Brownie framework.

If you finish this section early, assist others in your breakout room


## [**05m**] 💬 Check In: Tutorial Q&A (Part 1 of 2)

Instructor will answer student questions in the main room before dismissing to work on the second half of the tutorial.

## [**20m**] 💡Tutorial: Your First Token (Part 2 of 2)

In the same folder, complete the steps described in [Getting Started With Brownie (2 of 2)](https://medium.com/better-programming/getting-started-with-brownie-part-3-ef6bfa9867d7), which will walk you through **interacting with your first token** using the Brownie framework.

## [**05m**] 💬 Check In: Tutorial Q&A (Part 2 of 2)

Instructor will answer student questions in the main room before dismissing students for the day.

## [**03m**] 🌃 After Class: Read the Docs

- **When you've completed the tutorial**:
    1. Visit [Gradescope](https://www.gradescope.com/courses/160564) and click on the assignment titled [[Day 7] Your First Token](https://www.gradescope.com/courses/160564/assignments/662647).
    1. Upload the `Token.json` file, located in the `build` directory of your `token` project.
        - **You MUST successfully run `brownie compile` inside of the `token` directory for this file to exist!**
- **Spend at least `30 minutes` reviewing the [Brownie Documentation](https://eth-brownie.readthedocs.io/en/stable/#features).** Get familiar with the features. Be sure to write down any questions you have so we can discuss them together during the next class!

<!-- > -->

<!-- omit in toc -->
## 📚 Resources & Credits

### Student Contributions

- :tada: Shoutout to [@aucoeur](https://github.com/aucoeur) for finding an issue with `ganache-cli` installed alongside Node != v12: [GitHub Issue](https://github.com/trufflesuite/ganache-cli/issues/732#issuecomment-623782405) :tada:

### Referenced Material

- [thecryptoshed/eth-dapp-developer-roadmap](https://github.com/thecryptoshed/eth-dapp-developer-roadmap)
- [Brownie — Brownie 1.10.4 documentation](https://eth-brownie.readthedocs.io/en/stable/#features)
- [Structure of a Project — Brownie 1.10.4 documentation](https://eth-brownie.readthedocs.io/en/stable/structure.html)
- [Compiling Contracts — Brownie 1.10.4 documentation](https://eth-brownie.readthedocs.io/en/stable/compile.html)
- [Interacting with your Contracts — Brownie 1.10.4 documentation](https://eth-brownie.readthedocs.io/en/stable/interaction.html)
- [Brownie Package Manager — Brownie 1.10.4 documentation](https://eth-brownie.readthedocs.io/en/stable/package-manager.html)
- [The Brownie GUI — Brownie 1.10.4 documentation](https://eth-brownie.readthedocs.io/en/stable/gui.html#)
- [Brownie Turns 1.0.0!](https://medium.com/@iamdefinitelyahuman/brownie-turns-1-0-0-3d1f8d736f98)
- [Getting Started with Brownie: Part 1 | by Ben Hauser | Medium](https://medium.com/@iamdefinitelyahuman/getting-started-with-brownie-part-1-9b2181f4cb99)
- [Getting Started With Brownie (Part 2) | by Ben Hauser | Better Programming | Medium](https://medium.com/better-programming/getting-started-with-brownie-part-2-615a1eec167f)
- [Getting Started With Brownie (Part 3) | by Ben Hauser | Better Programming | Medium](https://medium.com/better-programming/getting-started-with-brownie-part-3-ef6bfa9867d7)
