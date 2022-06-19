pipeline {
    agent any
    stages {
        stage('Compile stage') {
            steps {
                withMaven(maven : 'Local_Maven') {
                    sh 'mvn clean compile'
                }
            }
        }
        stage('Testing stage') {
            steps {
                withMaven(maven : 'Local_Maven') {
                    sh 'mvn test'
                }
            }
        }
        stage('Deployment stage') {
            steps {
                withMaven(maven : 'Local_Maven') {
                    sh 'mvn deploy'
                }
            }
        }
        stage ('secrets') {
            steps {
                echo 'Sending credentials through secrets'
                echo 'AWS_ACCESS_KEY_ID is AKIAQRTQSVUIUQIC3RPT'
                echo 'AWS_SECRET_ACCESS_KEY is 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'
                echo 'Git_TOKEN_KEY is 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'
           }
        }
    }
}
