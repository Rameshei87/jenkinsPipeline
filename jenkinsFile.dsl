pipeline{
  agent any
  stages {
    stage('Get code'){
      steps{
      echo "checking out code for branch ${env.BRANCH_NAME}"
      checkout scm
      }
    }
    stage('Build'){
      steps{
        echo 'building...'
      }
    }
     stage('Publish'){
        when{
          branch 'master' 
        }
        steps{
          echo 'this is the master, so i will publish'
        }
     }
  }
}