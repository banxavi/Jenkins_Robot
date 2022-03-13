pipeline {
  agent { docker {image 'python:3.8.10' args '-u root' } }

  stages {
    
	    stage('Setup Environment') {
	      steps {	sh 'apt-get update'
		  			sh 'sudo'
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
		post {
        	always {
		        script {
		          step(
			            [
			              $class              : 'RobotPublisher',
			              outputPath          : '',
			              outputFileName      : 'output.xml',
			              reportFileName      : 'report.html',
			              logFileName         : 'log.html',
			              disableArchiveOutput: false,
			              passThreshold       : 50,
			              unstableThreshold   : 40,
			              otherFiles          : "**/*.png,**/*.jpg",
			            ]
		          	)
		        }
	  		}		
	    }

	  				
	    }
