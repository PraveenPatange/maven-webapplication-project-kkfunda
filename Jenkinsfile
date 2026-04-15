pipeline {
    agent any

    tools {
        maven "maven-3.9.11"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh "mvn clean package"
            }
        }

        stage('SonarQube') {
            steps {
                withSonarQubeEnv('sonarqube') {
                    sh "mvn sonar:sonar"
                }
            }
        }
    }

    post {
        success {
            echo "✅ Success"
        }
        failure {
            echo "❌ Failed"
        }
    }
}
