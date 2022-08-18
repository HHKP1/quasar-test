pipeline {
    agent any

    tools {
        // Install the NodeJS version configured as "Nodejs" and add it to the path.
        nodejs "NodeJS"
    }

    stages {
        stage('git...') {
            steps {

                echo "Get some code from the Git..."
                git "https://github.com/HHKP1/quasar-test.git"
            }
        }
        stage('install dependencies...') {
            steps {

                echo "Install Dependencies"
                sh "npm install"
            }
        }
        stage('build application...') {
            steps {

                echo "Building the application ..."
                sh "npm run build"
            }
        }

        stage('build image...') {
            steps {
               script {
                    echo "building the docker image..."
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        sh "docker build -t hhkp/demo-app:1.0 ."
                        sh "echo $PASS | docker login -u $USER --password-stdin"
                        sh "docker push hhkp/demo-app:1.0"
                    }
                }
            }
        }
    }
}