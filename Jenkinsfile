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
                      dockerImage = docker.build                 
                      
                     
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
            } 
         }
