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
                sh 'flutter pub get'
            }
        }

        stage('Rodar testes') {
            steps {
                echo 'Executando testes...'
                sh 'flutter test'
            }
        }

        stage('Build APK') {
            steps {
                echo 'Gerando APK Flutter...'
                sh 'flutter build apk'
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
