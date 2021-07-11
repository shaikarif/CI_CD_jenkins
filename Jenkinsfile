pipeline {

      environment {

       registry = "arifhussain123/docker_cicd"
       credentialid = 'dockerhub'
         dockerImage = ''
                    }
agent any 
      stages {
         stage('cloning  git') {
            
          steps {
         git 'https://github.com/shaikarif/CI_CD_jenkins.git'
                    
                     }
                }
         stage('building docker image') {
          steps {
                 script { 
                      dockerImage = docker.build  registry + ":$BUILD_TAG"                
                      
                     
                       }
                     }
                   }
           stage('push the image to dockerhub') {
              steps { 
                    script {
                        docker.withRegistry('', credentialid) {

                                  dockerImage.push()
                 }
              }
            }
           }
           stage('run the container') {
               steps {
                  script {
                     docker.withRegistry('', credentialid) {
                            dockerImage.run(-p 8080:80)
                    }
                  }
                }
              }
            } 
         }
