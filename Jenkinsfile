pipeline {
  agent { docker { image 'python:3.10.1-alpine' } }

  stages {
    
	    stage('Run Robot Tests') {
	      steps {
		        	sh 'python3 -m rflint --ignore LineTooLong Robot-Test'
		      		sh 'python3 --version'
		        	sh 'exit 0'
	      		}
	    
		        }
	  		}		
	    }
