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
                    sh "docker ps -a | grep mytomcat && docker stop mytomcat"
                    sh "docker ps -a | grep mytomcat && docker rm mytomcat"
                    sh "docker run --name mytomcat -d -p 8080:8080 mytomcat"
                }
            }
        }
    }
}
