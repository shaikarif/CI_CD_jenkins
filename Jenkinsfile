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
                      dockerImage = docker.build registry  + ":$BUILD_ID"                
                      
                     
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
                            dockerImage.run('-p 80:5000')
                    }
                  }
                }
              }
            stage('stopping containers') {
                 steps {
                      sh "docker stop $registry:$BUILD_ID"
                    }
                  }
            stage('Cleaning up') { 
            steps { 
                sh "docker rmi $registry:$BUILD_ID"
                  }
                 }
            } 
         }
