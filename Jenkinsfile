pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Fazendo checkout do código...'
                checkout scm
            }
        }

        stage('Instalar dependências') {
            steps {
                echo 'Instalando dependências do Flutter...'
                bat 'flutter pub get'
            }
        }

        stage('Rodar testes') {
            steps {
                echo 'Executando testes...'
                bat 'flutter test'
            }
        }

    }

    post {
        success {
            echo 'Pipeline finalizado com SUCESSO! 🚀'
        }
        failure {
            echo 'Pipeline FALHOU ❌'
        }
    }
}
