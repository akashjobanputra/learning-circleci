## SSH keys are to be created without any password. (Empty Password)
1. Generate ssh keys if not already using: `ssh-keygen -t rsa -b 4096`
    1. Push the public key to authorized_keys using: `cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys`
    2. Copy the private key (defaults to: ~/.ssh/id_rsa).
        - STARTS with `-----BEGIN RSA PRIVATE KEY-----` and  
          ENDS with `-----END RSA PRIVATE KEY-----`
2. Add the SSH public Key to Github and Private Key to your project on circleci. (Project Settings > Add SSH Key)  
_NOTE: The private keys should be same else it gives permission denied error_

## Setting Environment variables:
1. CircleCI lets you set environment variables via it's web UI
    - This is preferred so that you don't have to set the secret env variables in your repository
2. Environment Variables can be set via Project Settings -> Environment Variables, and can be accessed by `$<var-name>`
    - Ex:
        ```bash
        ssh $SSH_USER@$SSH_HOST
        ```
        Where, `$SSH_USER` and `$SSH_HOST` are the variables used in .cricleci/config.yml

### Sample Repository:
- The Repository I was using while learning (has all messy commits too) is [here](https://github.com/akashjobanputra/learning-circleci).