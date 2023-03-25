extends KinematicBody2D	

const CIMA = Vector2(0,-1)
const GRAVIDADE = 40
var velocidade = 250
var jump_height = -800 
var motion = Vector2()



#aciona os processos físico do personagem, ou seja, a movimentação de andar para os lados e pular. Além de conter a gravdidade para queda da personagem
func _physics_process(_delta):

	motion.y += GRAVIDADE
	player_movement()
	
	if is_on_floor(): 
		if Input.is_action_pressed("ui_up"):
			motion.y = jump_height	
			$Sprite.play("jump")
			
	motion = move_and_slide(motion, CIMA)
	
	if !is_on_floor():
		$Sprite.play("jump")
	

#movimentacao do player para direita e esquerda
func player_movement():
	if Input.is_action_pressed("ui_right"):
		motion.x = velocidade
		$Sprite.play("Run")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -velocidade
		$Sprite.play("Run")
		$Sprite.flip_h = true
	else:
		motion.x = 0
		$Sprite.play("Idle")

var cont = 0

#pes do personagem fazem sumir a vela
func _on_pes_body_entered(body):
	cont = Global.contador()
	body.desaparecer()
	motion.y = jump_height
	verficacao()


#player encosta e some a vela com o corpo
func _on_dano_body_entered(body):
	body.desaparecer()
	cont = Global.contador()
	verficacao()
	
		
func verficacao():
	if cont == 3:
		get_tree().change_scene("res://Cenas/Fim.tscn")


