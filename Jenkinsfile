pipeline {
  agent { label 'workstation'}

  parameters {
      choice(name: 'ENV', choice: ['dev','prod'], description: 'choose environment')
  }

  stages {

    stage ('terraform plan') {
      steps {
        sh 'terraform init -backend-config=env-${ENV}/state.tfvars'
        sh 'terraform plan -var-file=env-${ENV}/input.tfvars'
      }

    }

    stage ('terraform apply') {
       steps {

          sh 'terraform apply -var-file=env-${ENV}/input.tfvars -auto-approve'
      }

    }
  }



}
