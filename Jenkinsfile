pipeline {
    environment {
        docker Image = ''
                    }
agent any 
      stages {
         stage(cloning  git) {
            
          steps {
         git 'https://github.com/shaikarif/CI_CD_jenkins.git'
                    
                     }
                }

          stage('Building our image')  {

                steps {
                   script {
                         docker Image = docker.build ":$BUILD_NUMBER"
                                          }
                                        }
                                     }
                        
                     
                       }
                     }
