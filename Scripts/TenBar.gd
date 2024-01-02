@tool
extends HBoxContainer


@export var offImage : CompressedTexture2D
@export var onImage : CompressedTexture2D

@export var buttons : Array[Button]

@export var startingLevel : int = 3

var currentLevel : int = 0

func _ready():
	currentLevel = startingLevel
	for i in range(10):
		buttons[i] = get_children()[i]
	ResetButtons()
	startingLevel = 0

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
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])


func _on_button_3_pressed():
	ResetButtons()
	currentLevel = 3
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])


func _on_button_4_pressed():
	ResetButtons()
	currentLevel = 4
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])


func _on_button_5_pressed():
	ResetButtons()
	currentLevel = 5
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])

func _on_button_6_pressed():
	ResetButtons()
	currentLevel = 6
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])

func _on_button_7_pressed():
	ResetButtons()
	currentLevel = 7
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])

func _on_button_8_pressed():
	ResetButtons()
	currentLevel = 8
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])

func _on_button_9_pressed():
	ResetButtons()
	currentLevel = 9
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])

func _on_button_10_pressed():
	ResetButtons()
	currentLevel = 10
	for i in range(currentLevel):
		buttons[i].toggle_mode = true
		SetButtonIcon(buttons[i])
