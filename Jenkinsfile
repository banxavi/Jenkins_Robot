pipeline {
  agent { docker {image 'ppodgorsek/robot-framework'} }

  stages {
    
	    stage('Setup Environment') {
	      steps {	
			  		// sh 'robot --version'
		      		// sh 'python3 -m pip install -r requirements.txt'
					// sh 'python3 -m pip list'
					// sh 'python3 --version'	
					echo 'haha'			
	      		}
	    
		        }
	  stage('Run Robot Test') {
	      steps {
			  
		      		sh 'robot.run tasks.robot'
		      		sh 'exit 0'			
	      		}
	    
		        }
	  		}		
	    }
