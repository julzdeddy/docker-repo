pipeline {
    environment {
        registry = 'nexus.hcb:9443/hcb/dev/test'
        IMAGE_URL_WITH_TAG = "${registry}:${BUILD_NUMBER}"
    }
    agent {
        label 'docker-slave-node'
    }
    stages {
        stage('Push to Docker Registry') {
            steps {
                sh "docker build -t ${IMAGE_URL_WITH_TAG} ." 
                sh "docker push ${IMAGE_URL_WITH_TAG}"
                sh "docker rmi -f ${IMAGE_URL_WITH_TAG}"
            }
        }
    }
}
