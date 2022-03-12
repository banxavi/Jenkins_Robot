pipeline {
  agent { docker {image 'ppodgorsek/robot-framework'} }

  stages {
    
	    stage('Setup Environment') {
	      steps {	
			  		// sh 'robot --version'
		      		// sh 'python3 -m pip install -r requirements.txt'
					sh 'python3 -m pip install rpa'
					sh 'python3 -m pip install rpaframework'
					// sh 'python3 --version'	
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
