pipeline {
  agent

  stage('Start DB'){
    steps{
      dir('/trac'){
      docker-compose up -d db 
      }
    }
  }

  stage('Build app')
    steps{
      dir('/trac'){
      docker-compose build
      }
    }
  }

  stage('Start app')
    steps{
      dir('/trac'){
      docker-compose up app
      }
    }
  }

}