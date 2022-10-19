pipeline {
    agent any
    environment {
        PATH = "/opt/maven/bin:$PATH"
    }
    stages {
        stage('git-clone') {
            steps {
                git credentialsId: '6308e18b-34b0-46b1-9069-b4edcb3382a9', url: 'https://github.com/Nandana237/SampleRegistratonForm.git'
            }
        }
        stage('Building') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploying ROOT.war to tomcat') {
            steps {
                sshagent(['Docker-Credentials']) {
            sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.84.168 rm -rf tomcat/webapps/ROOT.war'
            sh "scp -o StrictHostKeyChecking=no target/RegistrationForm.war ec2-user@172.31.84.168:tomcat/webapps/ROOT.war"
            sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.84.168 tomcat/bin/startup.sh'
                }
            }
        }
        stage('Deploying ROOT.war and Dockerfile') {
            steps {
                sshagent(['Docker-Credentials']) {
        sh 'scp -o StrictHostKeyChecking=no target/RegistrationForm.war ec2-user@172.31.94.99:/home/ec2-user'
        sh 'scp -o StrictHostKeyChecking=no Dockerfile ec2-user@172.31.94.99:/home/ec2-user'
        sh 'scp -o StrictHostKeyChecking=no Latest_Version.txt ec2-user@172.31.94.99:/home/ec2-user'
        sh 'scp -o StrictHostKeyChecking=no Previous_Version.txt ec2-user@172.31.94.99:/home/ec2-user'
                } 
           }
       } 
       stage('Creating Image and Running container') {
            steps {
                sshagent(['Docker-Credentials']) {
        sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.94.99 docker rm -f tom-cont'
        sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.94.99 docker image rm -f nandana237/tom-img:latest'
        sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.94.99 docker build -t nandana237/tom-img:latest .'
        sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.94.99 docker run -p 8080:8080 --name tom-cont -dit nandana237/tom-img:latest'
                } 
           }
       }
    }
}
