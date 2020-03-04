pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t mytomcat .'
		    sh 'docker images | grep mytomcat'
                }
            }
        }
    }
}
