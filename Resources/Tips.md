# Valuable Truffle Tips that Cost Me About $100

**Credits**: [**Original Post** *(Reddit, 2018)*](//www.reddit.com/r/ethdev/comments/6jd08q/valuable_truffle_tips_that_cost_me_about_100/)

So I had my first experience with Truffle on the mainnet today. It did not go well. Here are some tips that might make it go better for you.

1. The Truffle default gas price is about double the maximum recommended gas price on the mainnet currently. Make sure to set a gasPrice in `truffle.js`. Make sure it's not too low, because Truffle gives up on a deployment after 50 blocks.

2. Unlike Mist, Truffle just sets a constant gas limit on each transaction and hops for the best. If the mainnet gas limit is higher than the default, you will have to set gas to something lower in truffle.js. Also make sure you have lots of money in your account, because Truffle will abort if you don't have funds to pay for all that gas at whatever gas price it is using.

3. Do no more than one deploy per migration script! It's super tempting to dump a promise chain of several deploy calls into the default `2_deploy_contracts.js`, but and the Truffle docs suggest it, but it's a trap! Truffle keeps track of the addresses of deployed contracts on each network in the `.json` files in `build/contracts`, which it updates after each successful migration. If you have more than one deploy in a migration, and a deployment fails, Truffle will throw away the addresses of anything already deployed in that migration step. Even if the failing step is recording the success of the deployment on-chain, you lose any deployed contract addresses. If you keep the deploys in separate steps, Truffle will at least record the addresses of what it successfully deployed, and there may be some hope of recovering from that state. I have not yet found a good way to remind Truffle that it has already deployed a contract at a particular address on a particular network. Perhaps hand-editing that information into its build files would do it.

4. Similarly, keep `build/contracts` in source control. That's where Truffle keeps its records of where deployed contracts (including the main Migrations contract that tracks migration state) actually live. If you lose those files, Truffle loses track of your entire app.
