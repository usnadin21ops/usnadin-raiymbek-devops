pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Raiymbek'
        STUDENT_SURNAME = 'Usnadin'
        STUDENT_GROUP   = 'IT2-2310'
        STUDENT_ID      = '38318'
    }

    stages {
        stage('Checkout') {
            steps {
                echo '=== Stage 1: Checkout Code ==='
                git branch: 'main', url: 'https://github.com/usnadin21ops/usnadin-raiymbek-devops.git'
            }
        }

        stage('Build') {
            steps {
                echo '=== Stage 2: Build ==='
                sh 'echo "Building project..."'
                sh 'chmod +x scripts/Usnadin_Raiymbek_system.sh'
            }
        }

        stage('Test') {
            steps {
                echo '=== Stage 3: Test ==='
                sh 'test -f Usnadin_Raiymbek_info.txt && echo "Info file exists test PASSED"'
            }
        }

        stage('Docker Build') {
            steps {
                echo '=== Stage 4: Docker Build ==='
                sh 'docker build -t usnadin-raiymbek-devops .'
            }
        }

        stage('Docker Run') {
            steps {
                echo '=== Stage 5: Docker Run ==='
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                sh 'docker rm -f usnadin-raiymbek-container || true'
                sh 'docker run --name usnadin-raiymbek-container usnadin-raiymbek-devops'
            }
        }
    }
}
