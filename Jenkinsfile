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
               sh "docker stop test "
               sh "docker system prune -a -f"
               sh "systemctl start docker"
               sh "docker build -t server:1 /mnt/project/."
               sh "docker run -itdp 8081-8085:8080 --name test server:1"
      }
    }
  }
}
