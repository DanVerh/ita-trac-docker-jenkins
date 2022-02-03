pipeline {
    agent any

    stages {
        stage('Start DB') {
            steps {
                mkdir ~/db
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