pipeline {
    agent any

    environment {
        ANSIBLE_HOST_KEY_CHECKING = 'False'
    }
    
    parameters {
        string(name: 'REMOTE_HOST', defaultValue: 'localhost:80', description: 'IP address of the remote host')
        choice(name: 'HOST_TYPE', choices: ['server', 'desktop', 'laptop'], description: 'Type of the remote host')
        string(name: 'USERNAME', defaultValue: 'jenkins', description: 'Username for SSH')
        password(name: 'PASSWORD', defaultValue: 'jenkins', description: 'Password for SSH')
        string(name: 'SSH_KEY', defaultValue: '', description: 'SSH key for authentication')
        string(name: 'PACKAGES', defaultValue: 'curl, python3, python3-pip, python3-pep8, python3-flask, pipenv, pylint, codespell', description: 'List of packages to install')
        string(name: 'CONFIG_FILES', defaultValue: '', description: 'List of configuration files')
    }

    stages {
        stage('Setup Remote Host') {
            steps {
                script {
                    def remoteHost = params.REMOTE_HOST
                    def hostType = params.HOST_TYPE
                    def username = params.USERNAME
                    def password = params.PASSWORD
                    def sshKey = params.SSH_KEY
                    def packages = params.PACKAGES
                    def configFiles = params.CONFIG_FILES

                    ansiblePlaybook(
                        playbook: 'setup.yaml',
                        inventory: "inventory/${remoteHost}",
                        extras: "--extra-vars 'host_type=${hostType} username=${username} password=${password} ssh_key=${sshKey} packages=${packages} config_files=${configFiles}'"
                    )
                }
            }
        }
    }
    
}
