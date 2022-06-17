pipeline { 
    agent any
    stages {
        stage('Install Dependencies') { 
            steps { 
                sh 'Installing npm...' 
                }
        }
        stage('Test') { 
            steps {
                sh 'echo "Testing the application..."'
                }
        }
        stage("Deploy application") {
            steps {
                sh 'echo "Deploying the application..."'
         }
       }
  	 }
   }
