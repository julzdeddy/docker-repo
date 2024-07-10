pipeline {
    environment {
        registry = 'testnexus.npfhq.com:9443/server'
        IMAGE_URL_WITH_TAG = "${registry}:${BUILD_NUMBER}"
    }
    agent {
        docker {
            image 'nginx:latest'
        }
    }
    
        stage('Push to Docker Registry') {
            steps {
                sh 'docker build -t ${IMAGE_URL_WITH_TAG} .' // Ensure Dockerfile is in the current directory
                sh 'docker push ${IMAGE_URL_WITH_TAG}'
                sh 'docker rmi -f ${IMAGE_URL_WITH_TAG}'
            }
        }
    }
    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}
