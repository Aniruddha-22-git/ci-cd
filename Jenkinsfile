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
               sh "docekr system prune -a -f"
               sh "systemctl start docker"
               sh "docker build -t server:1 /mnt/project/."
               sh "docker run -itdp 8080:8080 --name test server:1"
      }
    }
  }
}
