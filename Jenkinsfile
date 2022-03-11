pipeline {
  agent { docker { image 'python:3.10.1-alpine' } }

  stages {
    
	    stage('Run Robot Tests') {
	      steps {
		      		sh 'python3 --version'
		      		sh 'pip install -r requirements.txt'
		      		sh 'robot tasks.robot'
		        	sh 'exit 0'
	      		}
	    
		        }
	  		}		
	    }
