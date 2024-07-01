pipeline{
    agent any
    stages {

        stage('Setup Python Virtual ENV for dependencies'){

      steps  {
            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''}
        }
        stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('setup Nginx'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
        stage('Run server'){
            steps {
                sh '''
                chmod +x runserver.sh
                ./runserver.sh
                '''
            }
        }
    }
}