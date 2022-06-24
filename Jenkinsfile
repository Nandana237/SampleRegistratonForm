pipeline {
    agent any
    stages {
        stage('git clone') {
            steps {
                git credentialsId: 'git_credentials', url: 'https://github.com/Nandana237/SampleRegistratonForm.git'
            }
        }
        stage('packaging the code') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploying RegistrationForm.war on Docker') {
            steps {
                sshagent(['ec2-credential']) {
    sh 'scp -o StrictHostKeyChecking=no target/RegistrationForm.war ec2-user@54.175.199.3:tomcat/webapps/
                }
            }
        }
    }
}
