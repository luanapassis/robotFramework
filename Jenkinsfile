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
		
		
	}	