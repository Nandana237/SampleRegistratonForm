pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
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
