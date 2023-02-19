extends Node2D

var dado1
var dado2
var dado3
var resultado

func _on_Button_pressed():
#	dado1 = float($dado1.text)
#	dado2 = float($dado2.text)
#	dado3 = float($dado3.text)
#	resultado = dado1 + dado2 + dado3
	$ColorRect/reposta.text = listaPreenchida()

func _on_Button2_pressed(): #botao para ver a lista que o usuario inseriu
	$ColorRect/reposta.text = listaUsuario()

func _on_Button3_pressed():
	$ColorRect/reposta.text = retornarTextoNaTela()

func _on_Button4_pressed():
	$ColorRect/reposta.text = valor()


func listaPreenchida():  # lista prencida
	var vetor = ["Eduardo","Tommy","Rafa", "Fernando","Ivan", "Luiza", "Ana", "Gustavo"]
#	var nomes = ""
	
#	for i in range(vetor.size()):
#		nomes += vetor[i] + "\n" 
	return String(vetor)
	
func listaUsuario(): #lsita que o usuario insere os dados
	var dado = $dado1.text.split(" ", true) # lista vazia que faz separacao dos dados inseridos
#	var list = ""
#	for i in range(dado.size()):
#		list += dado[i] + "\n"
	return String(dado)
	
func retornarTextoNaTela(): #funcao para retornar o texto
	return "Hello, World!"


func valor():
	return $dado2.text 





