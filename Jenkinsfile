pipeline {
    environment {
        dockerImage = ''
                    }
agent any 
      stages {
         stage('cloning  git') {
            
          steps {
         git 'https://github.com/shaikarif/CI_CD_jenkins.git'
                    
                     }
                }

          stage('Building our image')  {

                steps {
                   script {
                         dockerImage = docker.build ":$BUILD_NUMBER"
                                          }
                                        }
                                     }
                        
                     
                       }
                     }
