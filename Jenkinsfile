pipeline {
  agent { docker { image 'python:3.8.10' } }

  stages {
    
	    stage('Setup Environment') {
	      steps {
		      		sh 'python3 -m pip install -r requirements.txt'
					sh 'python -c "import sys; print(sys.path)"'
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
