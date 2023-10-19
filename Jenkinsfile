pipeline {
    agent { node { label 'AGENT-1' } } 
    options{
        ansiColor('xterm')
    }
    parameters{
        string(name: 'version', defaultValue: '1.0.0', description: 'Which version to deploy')
    }
    stages {
        stage('Deploy'){
            steps{
                echo "Deploying....."
                echo "Version from params: $params.version"
            }
        }
        stage('Init'){
            steps{
                sh '''
                    cd terraform
                    terraform init -reconfigure
                '''
            }
        }
        stage('Plan'){
            steps{
                sh '''
                    cd terraform
                    terraform plan -var="app_version=$params.version" -lock=false
                    terraform apply -var="app_version=1.5.0" -auto-approve -lock=false
                '''
            }
        }
    }
      
    post{
        always{
            echo "cleaning up workspace"
            //deleteDir()
        }
    }
}