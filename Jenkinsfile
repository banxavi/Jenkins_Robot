pipeline {
  agent { docker { image 'python:3.10.1-alpine' } }

  stages {
    
	    stage('Run Robot Tests') {
	      steps {
		      		sh 'python3 --version'
		      		sh 'python3 -m robot tasks.robot'
		        	sh 'exit 0'
	      		}
	    
		        }
	  		}		
	    }
