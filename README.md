# Dev Setup for Shared Environment

## Install all tools/dependencies

Change username and email in `entry.sh`
```
./entry.sh install-all
```

## Create Local Cluster (Kubernetes)

```
cd local-cluster
./init.sh
```

## Golang

```
cd golang
./install.sh
```

## Git Initialization

### Setup User Identity
```
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR EMAIL"
```

### Add SSH 
```
mkdir ~/.ssh
sudo cp Personal_Data/git_rsa .ssh/
ssh -T -i .ssh/git_rsa git@github.com
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/git_rsa
git clone git@github.com:hp-tsmc/dev-env.git
```

### TO Push Your Change
[Generate your personal token for git](https://stackoverflow.com/questions/68775869/support-for-password-authentication-was-removed-please-use-a-personal-access-to)
