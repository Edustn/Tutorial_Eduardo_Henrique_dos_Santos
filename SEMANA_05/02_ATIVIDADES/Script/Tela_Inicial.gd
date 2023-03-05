extends Node2D
# as variaveis teste e valor foram eliminadas, pois não estavam executando nenhuma função no código
#variavel não recebe acento, por isso escrevemos corretamente o numero
var numero = 0 
#estava faltando o var em lista
var lista = [] 
#variavel adicionada, pois estava sendo requerida em grande parte de todo o codigo
var nome = "" 
#variavel ler adicionada somente para organizar o codigo de para saber quem esta lendo
var ler

#a função read foi retirada, pois não estava executando nenhuma função nesse código

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	ler = str($LineEdit.text).split(" ")
	nome = str(ler[0])
	#mudou a variável para ficar sem acento e faltou o $ no LIneEdit
	numero = int(ler[1]) 
	#havia faltado a criacao da variavel nome. Entao foi criada na linha acima
	$LineEdit.text = nome 
	

	

func _on_Button2_pressed():
#Incrementando o número inserido pelo usuário
	for i in range(10):
		#estava com o n maiúsculo, mas o certo é com minúsculo como foi declarado no começo do código
		numero += i 
		#variável estava como maiúscula e foi alterada para minúcula
		lista.append(numero) 
	#como número se trata de uma variável inteira á necessária converte-la para String para ser aceita em uma  label
	$Label.text = str(numero) 


func _on_Button3_pressed():
	
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	
	#faltou o var e foi posto agora em um escopo global
	var i = 0 
	#houve mudança no laço por conta que ele estava sem um elemento de parada
	while(i < len(lista)):
		#faltou o var e foi posto agora
		var cont = 0 
		
		if(lista[i] % 2 == 1):
			cont = 1
		if(cont != 0):
			nome = nome + "baldo"
		#adicionado essa variável nesse local para contar a volta no contador e ir incrementando nessa variável
		i += 1
		$Label2.text = nome
#	
	
