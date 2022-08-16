pipeline {
    agent any
    environment {
        PATH = "/opt/maven/bin:$PATH"
    }
    stages {
        stage('git-clone') {
            steps {
                git credentialsId: '15513cdc-0aff-4320-a1d9-feb0b298c867', url: 'https://github.com/Nandana237/SampleRegistratonForm.git'
            }
        }
        stage('Building') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploying ROOT.war to tomcat') {
            steps {
                sshagent(['SSH-Credentials']) {
            sh "scp -o StrictHostKeyChecking=no target/RegistrationForm.war ec2-user@172.31.26.172:tomcat/webapps/ROOT.war"
                }
            }
        }
        stage('Deploying ROOT.war and Dockerfile') {
            steps {
                sshagent(['SSH-Credentials']) {
        sh 'scp -o StrictHostKeyChecking=no target/RegistrationForm.war ec2-user@172.31.85.137:/home/ec2-user'
        sh 'scp -o StrictHostKeyChecking=no Dockerfile ec2-user@172.31.85.137:/home/ec2-user'
        sh 'scp -o StrictHostKeyChecking=no Latest_Version.txt ec2-user@172.31.85.137:/home/ec2-user'
        sh 'scp -o StrictHostKeyChecking=no Previous_Version.txt ec2-user@172.31.85.137:/home/ec2-user'
                } 
           }
       } 
       stage('Creating Image and Running container') {
            steps {
                sshagent(['SSH-Credentials']) {
        sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.85.137 docker rm -f tom-cont'
        sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.85.137 docker image rm -f nandana237/tom-img:$(cat /var/lib/jenkins/workspace/Pipeline-Test1/Previous_Version.txt)'
        sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.85.137 docker build -t nandana237/tom-img:$(cat /var/lib/jenkins/workspace/Pipeline-Test1/Latest_Version.txt) .'
        sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.85.137 docker run -p 8080:8080 --name tom-cont -dit nandana237/tom-img:$(cat /var/lib/jenkins/workspace/Pipeline-Test1/Latest_Version.txt)'
                } 
           }
       }
    }
}
