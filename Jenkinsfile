pipeline {
    agent { label 'trac' }

    stages {
        stage('Start DB') {
            steps {
                dir('/root/workspace/trac'){
                sh "sudo docker-compose up -d db"
                }
            }
        }
        stage('Build app') {
            steps {
                dir('/root/workspace/trac'){
                sh "sudo docker-compose build"
                }
            }
        }
        stage('Start app') {
            steps {
                dir('/root/workspace/trac'){
                sh "sudo docker-compose up -d app"
                }
            }
        }
    }
}
