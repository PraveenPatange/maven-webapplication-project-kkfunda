pipeline {
    agent any

    tools {
        maven "maven-3.9.11"
    }

    environment {
        SONAR_HOME = tool "sonarqube"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Compile') {
            steps {
                sh "mvn clean compile"
            }
        }

        stage('Build') {
            steps {
                sh "mvn clean package"
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonarqube') {
                    sh "mvn sonar:sonar"
                }
            }
        }

        stage('Deploy to Nexus') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'nexus-creds',
                    usernameVariable: 'NEXUS_USER',
                    passwordVariable: 'NEXUS_PASS'
                )]) {
                    sh "mvn deploy -Dnexus.username=$NEXUS_USER -Dnexus.password=$NEXUS_PASS"
                }
            }
        }

        stage('Jacoco Coverage') {
            steps {
                jacoco(
                    changeBuildStatus: true,
                    minimumInstructionCoverage: '80',
                    minimumBranchCoverage: '80',
                    minimumComplexityCoverage: '80',
                    minimumLineCoverage: '80',
                    minimumMethodCoverage: '80'
                )
            }
        }

        stage('Deploy to Tomcat') {
            when {
                branch 'preprod'   // Only deploy from preprod branch
            }
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'tomcat-creds',
                    usernameVariable: 'TOMCAT_USER',
                    passwordVariable: 'TOMCAT_PASS'
                )]) {
                    sh """
                    curl -u $TOMCAT_USER:$TOMCAT_PASS \
                    --upload-file target/maven-web-application.war \
                    "http://65.0.19.177:8080/manager/text/deploy?path=/maven-web-application&update=true"
                    """
                }
            }
        }
    }

    post {
        success {
            echo "✅ Deployment successful :)"
        }
        failure {
            echo "❌ Pipeline failed"
        }
    }
}
