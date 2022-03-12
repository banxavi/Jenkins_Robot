pipeline {
  agent { docker {image 'python:3.8.10' } }

  stages {
    
	    stage('Setup Environment') {
	      steps {	
			  		// sh 'python3 -m venv tutorial-env'
			  		// sh 'source tutorial-env/bin/activate'
					sh 'python3 -m pip install rpaframework'
					sh 'pip list'
					echo 'haha'			
	      		}
		        }
	  stage('Run Robot Test') {
	      steps {
			  
		      		sh 'robot tasks.robot'
		      		sh 'exit 0'			
	      		}
	    
		        }
	  		}		
	    }
