# Mac OS Setup

## Check your processing type

Let's check what type of apple chip our laptop contains.

Run the following command:

`/bin/bash -c "$(curl -fsSL https://github.com/alexisflipo/machine_setup/blob/main/macos/macos_processor.sh)"`

## Install Xcode Command Line Tools
> :warning: Make sure to have at least 40 gb of free disk space

These are tools for software developers that run on the command line, that is, in the Terminal application (also called the console). These tools have been used for programming on Unix operating systems since computing's beginnings, serving as the foundation of almost all software development.

Run the following command:

`xcode-select --install`

## Install Brew 
Brew is the missing package manager for macos or linux. It allows you to install a lot of open source tool.

Run the following command:

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Check that you are up to date.

`brew update`

## Useful packages
Please feel free to adapt and select only those tools that you find useful


Run the following command:

```
brew install git
brew install gh
brew install wget
brew install jq
brew install openssl
brew install tree
brew install ncdu
brew install xz
brew install readline
brew install speedtest-cli
brew install --cask iglance
```
speedtest-cli needs Python version between 2.4 to 3.7

## Configure vscode

Run the following command:

`brew install --cask visual-studio-code`

### Useful VsCode extensions 
Please feel free to adapt and select only those tools that you find useful. I selected the most useful as a Data Ops/MlOps Engineer. You might not need extensions such as terraform or docker.

```
code --install-extension emmanuelbeziat.vscode-great-icons
code --install-extension MS-vsliveshare.vsliveshare
code --install-extension ms-python.python
code --install-extension KevinRose.vsc-python-indent
code --install-extension ms-python.vscode-pylance
code --install-extension HashiCorp.terraform
code --install-extension donjayamanne.githistory
code --install-extension ms-azuretools.vscode-docker
code --install-extension njpwerner.autodocstring
```

### Configure your vscode settings

Please replace the settings.json located at `$HOME/Library/Application\ Support/Code/User/settings.json` by your settings.json 
**OR**
add
```
{

"files.autoSave": "afterDelay",

"python.formatting.provider": "black",

"python.formatting.blackArgs": ["--line-length", "120"],

"python.linting.enabled": true

}
```
## Authorize hidden files and folders display

Run the following command: 

```
defaults write com.apple.Finder AppleShowAllFiles true && \
killall Finder
```

## Configure zsh

Run the following command:

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### Configure zsh syntax highlighting
Run the following command:
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

Read and executes the content of the zsh script:

`source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`

## Configure git & github

Run the following command:

`gh auth login -s 'user:email' -w`

## SSH config
If you're not logged in and you want to use ssh protocol

Run the following command:

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```
Then re run:

`gh auth login -s 'user:email' -w`

Then to confirm you logged in successfully please run:

`gh auth status`


## Configure Pyenv

Run the following command:

`brew install pyenv`

Install a specific python version

`pyenv install <major.minor.patch>`


Configure python lib (flake8, mypi, black)


## Configure aws cli
Run the following command:

```
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```
### Set up credentials
Run the following command:

`aws configure`

Fill in with your own values

## Configure Docker
Go to the Docker [documentation](https://docs.docker.com/desktop/install/mac-install/)
Install the docker dmg.
If it is downloaded on Downloads folder please run

`mv ~/Downloads/Docker.dmg ~/`

and then run

```
sudo hdiutil attach Docker.dmg
sudo /Volumes/Docker/Docker.app/Contents/MacOS/install
sudo hdiutil detach /Volumes/Docker
```

Then try to launch docker
Configure docker as non-root user 
https://docs.docker.com/engine/install/linux-postinstall/#configure-docker-to-start-on-boot-with-systemd

## Configure terraform
Please run the following command:

`brew tap hashicorp/tap`
`brew install hashicorp/tap/terraform`

Configure DS lib

## Configure dbeaver

Go to https://dbeaver.io/download/ and donwload the version of your choice 

## Configure dev dependencies (lib dev + sql)
In order to be able to run libraries with mysql dependencies you need to install mysql

Please run the following command:

`brew install mysql`  
`PATH=$PATH:/usr/local/mysql/bin`




