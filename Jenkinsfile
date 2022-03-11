pipeline {
  agent { docker { image 'python:3.10.1-alpine' } }

  stages {
    
	    stage('Run Robot Tests') {
	      steps {
		      		sh 'python3 --version'
				sh 'python3 -m pip install --upgrade pip'
		      		sh 'pip install sip'
		      		sh 'python3 -m pip install -r requirements.txt'
		      		sh 'python3 -m pip list'
		        	sh 'exit 0'
	      		}
	    
		        }
	  		}		
	    }
