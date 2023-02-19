pipeline{
    
    agent any
    
    tools {
        maven 'maven3.8.7'
        
    }

    stages {
        
        stage('CodeCheckOut') {
            
            steps {
                
                git credentialsId: 'cc3289c1-c945-4655-9a4a-dbc7956e115d', url: 'https://github.com/SourceTechTalents/maven-web-application'
                
            }
            
        }
        stage('BuildWithMaven') {
            
            steps {
                
                sh "${tool 'maven3.8.7'}/bin/mvn clean package"
                
            }
        }
        stage('RunSonarQubeReport3.8.7') {
            
            steps {
                
                sh "${tool 'maven3.8.7'}/bin/mvn clean sonar:sonar"
                
            }
        }
        stage('BackUpArtifacts') {
            
            steps {
                
                sh "${tool 'maven3.8.7'}/bin/mvn clean deploy"
                
            }
            
        }
        stage('DeployAppToTomcat') {
            
            steps {
                
                sshagent(['6524fc67-a20a-40e3-99c4-5bc76c7dc044']) {
                    sh "scp -o StrictHostKeyChecking=no target/*.war ec2-user@18.217.0.174:/opt/tomcat9/webapps"
                }
                
            }
        }
        
    }
    
}
