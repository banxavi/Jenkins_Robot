pipeline {
  agent { docker {image 'ppodgorsek/robot-framework'} }

  stages {
    
	    stage('Setup Environment') {
	      steps {	
			  		// sh 'robot --version'
					// sh 'python3 --version'	
					sh 'pip install Selenium2Library'
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
