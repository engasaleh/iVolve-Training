# Lab 1: Creating Groups, Users, and Installing Nginx Without Password

## Objective
This lab demonstrates:
1. How to create a group and a user in Ubuntu.
2. How to configure password-less `sudo` for the user.
3. How to install Nginx as the user without entering a password.

## Prerequisites
- Ubuntu OS (tested on Ubuntu 20.04+)
- `sudo` privileges on the system

## Steps
## These are the following steps that I need to walk through it to do my lab:

### Step 1: Create a Group named ivolve
Run the following command to create a group named `ivolve`:
```bash
sudo groupadd ivolve
```

### Step 2: Create a User named abdo
```bash
sudo useradd -m -G ivolve abdo
```


### After The previous step
### Step 3: Add a password for 'abdo' User
```bash
sudo passwd abdo 
```

### Step 4: Add a User in sudoers file 
```bash
sudo visudo
```
## Then add it as following in the sudeors:

## %ivolve ALL=(ALL)	NOPASSWD: ALL

### Step 5: Login to a User abdo to install nginx without password

```bash
su - abdo
```


### Step 6: Install NGINX on new user abdo wothout password
```bash 
sudo apt update 
sudo apt install -y nginx
```


## Screenshots
### Group Creation
![Group Creation](im/create-group.png)

### Nginx Installation
![Nginx Installation](images/install-nginx.png)
