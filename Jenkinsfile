pipeline {
  agent { docker {image 'python:3.8.10'} }

  stages {
	  	stage('Get Google-Chrome Driver') {
			steps {
				sh "echo deb http://dl.google.com/linux/chrome/deb/ stable main"
				sh "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub"
				sh "apt-get update -y"
				sh "wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
				sh	"apt-get install libxpm4 libxrender1 libgtk2.0-0 libnss3 libgconf-2-4 -y"
				sh 	"apt install ./google-chrome-stable_current_amd64.deb -y"
				sh	"apt-get install xvfb gtk2-engines-pixbuf -y" 
				sh	"apt-get install xfonts-cyrillic xfonts-100dpi xfonts-75dpi xfonts-base xfonts-scalable -y"
				sh	"apt-get install imagemagick x11-apps -y"
			}
		}
	    stage('Install Library') {
	      steps {
			  		sh 'python3 -m pip install -r requirements.txt'
					sh 'python3 -m pip install robotframework-selenium2library'
					sh 'python3 -m pip install rpaframework'
					sh 'pip list'		
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
			              otherFiles          : ".png",
			            ]
		          	)
		        }
	  		}		
	    }

	  				
	    }
