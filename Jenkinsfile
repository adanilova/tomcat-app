pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t mytomcat .'
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    sh 'docker stop $(docker ps -a | grep mytomcat | awk \'{print $1}\') || true'
                    sh "docker run --name mytomcat -d -p 8080:8080 mytomcat"
                }
            }
        }
    }
}
