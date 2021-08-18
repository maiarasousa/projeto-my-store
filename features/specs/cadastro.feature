#language:pt

@cadastro_usuario
Funcionalidade: Cadastro de usuario
	Sendo um usuario
	Quero realizar o meu cadastro

	@maiara_sousa
	@fazer_cadastro
	Cenario: Fazer cadastro
		Dado que acesso a pagina principal
		E acesso o submenu entrar
		Quando preencho o formulario de cadastro:
			| nome     | sobrenome | email                       | senha  | nascimento |
			| Cristina | Soares    | cristina789soares@gmail.com | pwd123 | 10/05/1979 |
		Entao finalizo o meu cadastro
