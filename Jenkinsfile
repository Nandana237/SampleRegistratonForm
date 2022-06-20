pipeline {
    agent any
    stages {
        stage('Compile stage') {
            steps {
                withMaven(maven : 'Maven3.8.6') {
                    sh 'mvn clean compile'
                }
            }
        }
        stage('Testing stage') {
            steps {
                withMaven(maven : 'Maven3.8.6') {
                    sh 'mvn test'
                }
            }
        }
        stage('Deployment stage') {
            steps {
                withMaven(maven : 'Maven3.8.6') {
                    sh 'mvn deploy'
                }
            }
        }
        
    }
}
