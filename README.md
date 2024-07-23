# Dev Setup for Shared Environment

## Install all tools/dependencies

Change username and email in `entry.sh`
```sh
./entry.sh install-all
```

## Create Local Cluster (Kubernetes)

```sh
cd local-cluster
./init.sh
```

## Golang
sh
```
cd golang
./install.sh
```

## Git Initialization

### Setup User Identity
```sh
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR EMAIL"
```

### Add SSH 
```sh
mkdir ~/.ssh
sudo cp Personal_Data/git_rsa .ssh/
```

```sh
ssh -T -i .ssh/git_rsa git@github.com
```

```sh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/git_rsa
```

```sh
git clone git@github.com:hp-tsmc/dev-env.git
git clone git@github.com:hp-tsmc/cube.git
```

### Install CMake
```sh
wget https://github.com/Kitware/CMake/releases/download/v3.30.0/cmake-3.30.0-linux-x86_64.tar.gz
tar -zxvf cmake-3.30.0-linux-x86_64.tar.gz
mv cmake-3.30.0-linux-x86_64 /home/kasm-user/
echo 'export PATH=${PATH}:/home/kasm-user/cmake-3.30.0-linux-x86_64/bin' >> ~/.bashrc
```

### C++ Env for VSCODE
- C++ Extension
  - Make sure to set cmakepath
- Docker Extension


### TO Push Your Change
[Generate your personal token for git](https://stackoverflow.com/questions/68775869/support-for-password-authentication-was-removed-please-use-a-personal-access-to)
