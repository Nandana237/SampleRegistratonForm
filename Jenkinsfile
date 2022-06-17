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
                echo 'AWS_ACCESS_KEY_ID     = credentials('AKIAQRTQSVUIUQIC3RPT')'
                echo 'AWS_SECRET_ACCESS_KEY = credentials('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')'
                echo 'Git_TOKEN_KEY         = credentials('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')'
           }
        }
    }
}
