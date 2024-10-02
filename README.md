# Branch Protection for Poor People

Are you concerned about branch protection in your GitHub repositories, but you are short on cash?

Are you a dumb developer like me who pushes directly to `master` on their second day of work?

I got you covered.

Install this `git hook` either globally (for all your **future** repositories) or locally (for a single repository)
and you will be able to "protect" your `master|main|dev` branch from being pushed to directly.

## Local Installation

Make sure you are somewhere in your repository and run the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/biagiodistefano/branch-protection-for-poor-people/main/install_local_hooks.sh)"
```

## Global Installation

Wherever you are, run the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/biagiodistefano/branch-protection-for-poor-people/main/install_global_hooks.sh)"
```
