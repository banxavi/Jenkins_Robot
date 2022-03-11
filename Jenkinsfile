pipeline {
  agent { docker { image 'python:3.8.10' } }

  stages {
    
	    stage('Setup Environment') {
	      steps {
		      		sh 'sudo python3 -m pip install -r requirements.txt'
					sh 'python3 -m pip list'
					sh 'sudo robot --version'
				
	      		}
	    
		        }
	  stage('Run Robot Test') {
	      steps {
			  
		      		sh 'sudo python3 -m robot.run tasks.robot'
		      		sh 'exit 0'			
	      		}
	    
		        }
	  		}		
	    }
