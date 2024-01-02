@tool
extends Control


@export var offImage : CompressedTexture2D
@export var onImage : CompressedTexture2D

@export var buttons : Array[Button]

@export_multiline var toolTipText : String
@export var startingLevel : int = 0

var currentLevel : int = 0

func _ready():
	currentLevel = startingLevel
	for i in range(5):
		buttons[i] = get_children()[i]
	ResetButtons()

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

func UpdateLevel():
	currentLevel = 0
	for button in buttons:
		if button.toggle_mode == true:
			currentLevel += 1
	print_debug(currentLevel)

func _on_button_1_pressed():
	buttons[0].toggle_mode = !buttons[0].toggle_mode
	SetButtonIcon(buttons[0])
	UpdateLevel()


func _on_button_2_pressed():
	buttons[1].toggle_mode = !buttons[1].toggle_mode
	SetButtonIcon(buttons[1])
	UpdateLevel()


func _on_button_3_pressed():
	buttons[2].toggle_mode = !buttons[2].toggle_mode
	SetButtonIcon(buttons[2])
	UpdateLevel()


func _on_button_4_pressed():
	buttons[3].toggle_mode = !buttons[3].toggle_mode
	SetButtonIcon(buttons[3])
	UpdateLevel()


func _on_button_5_pressed():
	buttons[4].toggle_mode = !buttons[4].toggle_mode
	SetButtonIcon(buttons[4])
	UpdateLevel()
