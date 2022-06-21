*** Variables ***

#browser padrao
${BROWSER}  ie
##chrome  firefox   ie

#variaveis da page_base
${TIMEOUT}  50
${MOUSE_DELAY}  0

#variaveis de teste
${USUARIO}  testeUsuario
${SENHA}    testeSenha

#variaveis para screeshot
${SCREENSHOT_EACH_STEP}     False
${DIR_SCREENSHOT}           ${EXECDIR}/reports/screenshots

#variaveis para conexão com o banco de dados mysql
${DB_MODULE_NAME}    pymysql
${DB_NAME}           bugtracker
${DB_USER_NAME}      root
${DB_PASSWORD}       root
${DB_HOST}           localhost
${DB_PORT}           3306

