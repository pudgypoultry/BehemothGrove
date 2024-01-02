extends Button

@export var healthLevels : Array[CompressedTexture2D]
var currentImage : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	icon = healthLevels[currentImage]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	currentImage = (currentImage + 1) % healthLevels.size()
	icon = healthLevels[currentImage]
