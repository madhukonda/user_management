pipeline {
    agent any
    stages {
        
        stage('checkout') {
            steps {
            git url: 'https://github.com/madhukonda/user_management'
        }
        }
        stage('Build') {
            steps {
                echo 'Building The Project.'
                sh 'mvn clean install -DksipTests'

            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn clean test'
            }
        }
        stage('Build The Docker Image') {
            steps {

            sh 'docker build -t madhu9912/user-management:1.0.0  .'
            }
        }
    }
}

