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
                               sh 'npm install'
                               sh 'npm run build:ssr'
                               
                            }
                  }
                  stage('Deployment'){
			             steps{
				              sh "pm2 restart all"
			             }
		           }
         }
}
