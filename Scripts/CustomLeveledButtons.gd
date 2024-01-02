@tool
extends HBoxContainer


@export var offImage : CompressedTexture2D
@export var onImage : CompressedTexture2D

@export var buttons : Array[Button]

@export_multiline var toolTipText : String
@export var startingLevel : int = 0

var currentLevel : int = 0

func _ready():
	currentLevel = startingLevel
	for i in range(5):
		buttons[i] = get_children()[i+1]
	ResetButtons()

func _process(delta):
	pass

func SetButtonIcon(button : Button):
	if button.toggle_mode == true:
		button.icon = onImage
	else:
		button.icon = offImage

func ResetButtons():
	for button in buttons:
		button.toggle_mode = false
		SetButtonIcon(button)
	for i in range(startingLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])

func _on_button_1_pressed():
	ResetButtons()
	buttons[0].toggle_mode = true
	SetButtonIcon(buttons[0])
	currentLevel = 1


func _on_button_2_pressed():
	ResetButtons()
	currentLevel = 2
	for i in range(2):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])


func _on_button_3_pressed():
	ResetButtons()
	currentLevel = 3
	for i in range(3):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])


func _on_button_4_pressed():
	ResetButtons()
	currentLevel = 4
	for i in range(4):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])


func _on_button_5_pressed():
	ResetButtons()
	currentLevel = 5
	for i in range(5):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])
