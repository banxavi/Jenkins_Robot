pipeline {
  agent { docker { image 'python:3.8.10' } }

  stages {
    
	    stage('Setup Environment') {
	      steps {
		      		sh 'python3 --version'
				sh 'python3 -m pip install --upgrade pip'
		      		sh 'python3 -m pip install -r requirements.txt'
		      		sh 'python3 -m pip list'
		      		sh 'python3 -m robot --version'
	      		}
	    
		        }
	  stage('Run Robot Test') {
	      steps {
		      		sh 'python3 -m robot tasks.robot'
			
	      		}
	    
		        }
	  		}		
	    }
