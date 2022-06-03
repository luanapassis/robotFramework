def volume = "C:\\Docker:C:\\Docker"
def configBancoPath= "C:\\Sinqia\\X08S\\X08SP01\\Bin\\_ws\\X08WP01\\Set\\CC.cfg"
def replacedb = "#IP#"
def ipBanco = ""
def getIpDebug = "'{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
def confgTCPath = "C:\\SQCC\\ipBancoTestComplete.txt"
def replacedbTC = "#ipBancoTestComplete#"

node ("meupc"){
           
		echo 'passo 1'
		stage('Executar scripts') {
			
			bat 'call c:'
			bat 'call cd C:\Automacao\AutomacoesLuana\rpa\robotFramework'
			bat 'C:\Users\luanaAssis\.virtualenvs\robotFramework-_5z0GN7G\Scripts\robot.exe -T -d "./reports" scripts'
		}
		
	}	