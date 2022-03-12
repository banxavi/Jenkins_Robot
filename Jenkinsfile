pipeline {
  agent { docker {image 'python:3.8.10' } }

  stages {
    
	    stage('Setup Environment') {
	      steps {	
					sh 'python3 -m pip install robotframework-selenium2library'
					sh 'python3 -m pip install rpaframework'
					sh 'pip list'
					echo 'hahaa'			
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
