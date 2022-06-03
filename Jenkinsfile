node ("meupc"){

        echo 'passo 1'
        echo 'Criando diretorios de trabalho'
			dir('test'){
				deleteDir()
			}
			bat 'mkdir test'

		stage('Baixar fontes de testes') {
			dir('test'){
				echo 'Baixando os fontes'
				checkout scm
			}
		}
		echo 'passo 2'
		stage('Executar scripts') {
			
			bat 'call c:'
			bat 'call cd C:\\Automacao\\AutomacoesLuana\\rpa\\robotFramework'
			bat 'C:\\Users\\luanaAssis\\.virtualenvs\\robotFramework-_5z0GN7G\\Scripts\\robot.exe -T -d "./reports" scripts'
		}
		
	}	