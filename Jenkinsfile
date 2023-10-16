pipeline {
  agent { label 'workstation'}

  parameters {
      choice(name: 'ENV', choices: ['dev','prod'], description: 'choose Environment')
      choice(name: 'ACTION', choices: ['apply','destroy'], description: 'choose Action')
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

          sh 'terraform ${ACTION} -var-file=env-${ENV}/input.tfvars -auto-approve'
      }

    }
  }



}
