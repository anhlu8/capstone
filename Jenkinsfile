pipeline {
    agent any
    stages {
        stage('Upload to AWS'){
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell steps works too"
                '''
                withAWS(credentials:'aws-capstone', region:'us-east-1') {
                    // s3Upload(file:'index.html', bucket:'udacity-jenkins-project', path:'index.html')
                }
            }
        }
    }
    
}