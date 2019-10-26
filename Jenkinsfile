pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
                checkout scm
            }
        }
        stage('Building and pushing image to AWS') {
            steps {
                sh 'echo "Building Docker image & pushing to ECR"'
                withAWS(credentials:'aws-capstone', region:'us-east-1') {    
                    // sh "$(aws ecr get-login --no-include-email --region us-east-1)"                
                    sh "docker build -t udacity ."
                    sh "docker tag udacity:latest 278749303080.dkr.ecr.us-east-1.amazonaws.com/udacity:latest"
                    sh "docker push 278749303080.dkr.ecr.us-east-1.amazonaws.com/udacity:latest"
                }
            } 
        }
        stage('Deploying to AWS') {
            steps{
                sh 'echo "Hello AWS"'
                dir ('./') {
                    withKubeConfig([credentialsId: 'user1', serverUrl: '278749303080.dkr.ecr.us-east-1.amazonaws.com/udacity'])
                        {
                            sh "kubectl run devops-server 278749303080.dkr.ecr.us-east-1.amazonaws.com/udacity:latest"
                            sh "kubectl get pods"
                            sh "kubectl expose deployment devops-server --type=LoadBalancer"
                            sh "minikube service devops-server"
                        }
                    }
                }
            }
        }
    }





