pipeline {
	agent {
	    label 'agentnode1'
	}
	stages {
		//stage ('git checkout') {
			//steps {
				//git url: 'https://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@github.com/techsriman/hangout.git'
			//}
		//}
		stage ('build') {
			steps {
				withMaven {
					sh 'mvn clean verify'
				}
			}
		}
		stage('docker image') {
		    steps {
		        
		        script {
                    def customImage = docker.build("techsriman/hangout:${env.BUILD_ID}")
                    //customImage.push()
                }
		    }
		}
	}
}