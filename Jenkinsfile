pipeline {
    agent any
    stages {
        stage('Setup Python Virtual Environment') {
            steps {
                sh '''
                   chmod +x envsetup.sh
                   ./envsetup.sh
                '''
            }
        }
        stage('Setup Gunicorn') {
            steps {
                sh '''
                   chmod +x gunicornsetup.sh
                   ./gunicornsetup.sh
                '''
            }
        }
        stage('Setup Nginx') {
            steps {
                sh '''
                   chmod +x nginxsetup.sh
                   ./nginxsetup.sh
                '''
            }
        }
    }
}