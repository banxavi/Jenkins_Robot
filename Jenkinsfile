pipeline {
  agent { docker {image 'jafil/robotframework'} }

  stages {
    
	    stage('Setup Environment') {
	      steps {	
			  		// sh 'robot --version'
					// sh 'python3 --version'	
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
