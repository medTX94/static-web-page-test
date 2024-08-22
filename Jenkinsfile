pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the latest code from the GitHub repository
                git 'https://github.com/medTX94/static-web-page-test.git'
            }
        }

        stage('Build and Deploy to Staging') {
            steps {
                // Run the deployment script
                sh '/opt/DevSecOps/web-app/deploy_staging.sh'
            }
        }

        stage('Security Review') {
            steps {
                // Placeholder for manual security review
                input "Check the security report and approve if it's OK to proceed."
            }
        }

        stage('Deploy to Production') {
            steps {
                // Assuming the same script or another is used for production deployment
                sh '/opt/DevSecOps/web-app/deploy_production.sh'
            }
        }
    }
}
