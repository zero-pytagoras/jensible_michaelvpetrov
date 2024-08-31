The structure of the project:
The pipeline in Jenkisfile contains following parameters:
- Host ip
- Username
- Password
- SSH key
- List of packages (software to install)
- Config file list

ansibe.cfg is taken from ansible project

shellFiles folder contains commands to run work on different "machines" (main, worker01 and worker02)

API token 't1': 117d71953d387bec9b039fc2959578794a
Ansible plugin has been initiated with name 'Ansible' in Global Tools Configuration

Setting up remote host defines parameters for remote machine and uses these parameters as variables in 'setup.yaml' file 

 
