pipeline {
  agent { docker {image 'ppodgorsek/robot-framework'} }

  stages {
    
	    stage('Setup Environment') {
	      steps {	
			  		sh 'python3 -m venv tutorial-env'
			  		sh 'source tutorial-env/bin/activate'
					sh 'python3 -m pip install rpa'
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
