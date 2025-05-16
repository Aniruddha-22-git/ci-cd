pipeline{
  agent {
    label {
              label "built-in"
              customWorkspace "/mnt/project"
    }
  }
  stages{
    stage('project'){
      steps{
               sh "systemctl start docker"
               sh "docker build -t server:1 /mnt/project/."
               sh "docker run -itdp 80:80 --name test server:1"
      }
    }
  }
}
