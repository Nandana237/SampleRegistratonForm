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
        stage {
        AWS_ACCESS_KEY_ID     = credentials('AKIAQRTQSVUIUQIC3RPT')
        AWS_SECRET_ACCESS_KEY = credentials('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')
        Git_TOKEN_KEY         = credentials('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')
        }
    
    }
}
