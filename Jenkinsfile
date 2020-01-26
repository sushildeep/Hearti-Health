pipeline {
         agent any
             stages {
	    
                 stage('Source') {
                    steps {
                       checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url:'https://github.com/saritha1919/Hearti-Health.git']]])
			           }        
                 }
                  stage('Build') {
                            steps {  
                               powershell 'npm install'
                               powershell 'npm run ng -- build'
                            }
                  }
                  stage('Deployment'){
			             steps{
				              powershell "npm run ng serve --port 4201"
			             }
		           }
         }
}
