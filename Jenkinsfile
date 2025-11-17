pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Fazendo checkout do codigo...'
                checkout scm
            }
        }

        stage('Instalar dependencias') {
            steps {
                echo 'Instalando dependencias do Flutter...'
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
            echo 'Pipeline finalizado com SUCESSO'
        }
        failure {
            echo 'Pipeline FALHOU'
        }
    }
}
