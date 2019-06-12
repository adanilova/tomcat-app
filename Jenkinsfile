pipeline {
    agent any

    stages {
        stage('Clean') {
            steps {
                script {
                    sh 'docker stop mytomcat'
                }
            }
        }
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
                    sh "docker run --name mytomcat -d -p 8080:8080 mytomcat"
                }
            }
        }

    }
}