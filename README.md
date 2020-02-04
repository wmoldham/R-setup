R Setup
================

# Overview

How to get R up and running after a fresh install.

# Install R

Download and install latest version of R
[here](https://cran.r-project.org/)

Download and install Rstudio [preview version
here](https://rstudio.com/products/rstudio/download/preview/)

Install `devtools`

``` r
install.packages("devtools")
devtools::install_github("r-lib/devtools")
```

# Personalize

Set theme to Tomorrow Night Bright

Turn off options to:

  - restore `.Rdata` to workspace at startup
  - save workspace to `.Rdata` on exit

Update `.Rprofile` based on advice from
[here](http://kevinushey.github.io/blog/2015/02/02/rprofile-essentials/):

``` r
usethis::edit_r_profile()
```

# Update terminal

Follow general steps described
[here](https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/)

Install command line interface tools for Xcode

``` zsh
xcode-select —-install
```

Install homebrew

``` zsh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install iTerm

``` zsh
brew cask install iterm2
```

Install `Zsh` and `Oh My Zsh`

``` zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Change default terminal in Rstudio to `/bin/zsh`

# Git and GitHub

Follow the instructions from
[happygitwithr.com](https://happygitwithr.com/).

Installing Xcode command line tools above should install Git.

Install a Git client [GitKraken](https://www.gitkraken.com/download/mac)

Set up Git config. Make sure email address matches what is in GitHub,
especially if email privacy settings are activated.

``` r
use_git_config(user.name = "William Oldham", 
               user.email = "44209581+wmoldham@users.noreply.github.com")
```

Set up the default editor for Git

``` zsh
git config --global core.editor nano 
```

Set up SSH keys for GitHub and protect with a passphrase. Do not use
user password as the passphrase.

``` zsh
ssh-keygen -t rsa -b 4096 -C "USEFUL-COMMENT"
```

Check that SSH agent is running

``` zsh
eval "$(ssh-agent -s)"
```

Copy `SSH-config` to `~/.ssh/config`

Provide SSH keys to [GitHub](https://github.com/settings/keys)

``` zsh
pbcopy < ~/.ssh/id_rsa.pub
```

Set up a personal access token (PAT)

``` r
browse_github_token()
```

Then add `GITHUB_PAT=XXXXXX` to `.Renviron`

``` r
edit_r_environ()
```

A few other details to make sure `git2r` is setup appropriately.

``` zsh
brew install libssh2
brew install libgit2
```

``` r
install_github("ropensci/git2r")
git2r::libgit2_features()
```

Check to see how things are looking:

``` r
git_sitrep()
```
