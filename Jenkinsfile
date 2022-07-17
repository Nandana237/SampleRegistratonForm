pipeline {
    agent any
    environment {
        PATH = "/opt/maven/bin:$PATH"
    }
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
    sh 'scp -o StrictHostKeyChecking=no target/RegistrationForm.war ec2-user@172.31.83.250:/home/ec2-user'
    sh 'scp -o StrictHostKeyChecking=no Dockerfile ec2-user@172.31.83.250:/home/ec2-user'
    sh 'scp -o StrictHostKeyChecking=no Latest_Version.txt ec2-user@172.31.83.250:/home/ec2-user'
    sh 'scp -o StrictHostKeyChecking=no Previous_Version.txt ec2-user@172.31.83.250:/home/ec2-user'
    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.83.250 docker rm -f tom-cont'
    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.83.250 docker image rm -f nandana237/pipeline-img:1.0'
    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.83.250 docker build -t nandana237/pipeline-img:1.0 .'
    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.83.250 docker run -p 8080:8080 --name tom-cont -dit nandana237/pipeline-img:1.0'
    
                }
            }
        }
    }
}
