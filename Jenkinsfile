pipeline {
    agent { label 'trac' }

    stages {
        stage('Start DB') {
            steps {
                docker-compose up -d db 
            }
        }
        stage('Build app') {
            steps {
                docker-compose build
            }
        }
        stage('Start app') {
            steps {
                docker-compose up -d app
            }
        }
    }
}