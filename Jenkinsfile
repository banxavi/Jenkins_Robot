pipeline {
  agent { docker { image 'python:3.8.10' } }

  stages {
    
	    stage('Setup Environment') {
	      steps {
		      		sh 'python3 -m pip install -r requirements.txt'
					sh 'python3 -m pip list'
					sh 'python3 -m robotframework --version'
	      		}
	    
		        }
	  stage('Run Robot Test') {
	      steps {
		      		sh 'python3 -m robot.run tasks.robot'
		      		sh 'exit 0'			
	      		}
	    
		        }
	  		}		
	    }
