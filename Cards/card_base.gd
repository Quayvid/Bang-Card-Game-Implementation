extends MarginContainer
"""
# Sample code for generating a card by loading in the card database
@onready var card_database = preload("res://BANG!_assets/Cards/card_database.gd")
var card_name = "sheriff"
@onready var card_info = card_database.ROLE_DATA[card_database.new().get(card_name)]
@onready var card_image = str("res://BANG!_assets/Cards/Roles/", card_info[0], ".png")
"""

# Sample code for generating a card by loading in the card database
@onready var card_database = preload("res://BANG!_assets/Cards/card_database.gd")
var card_name = "kit_carlson"
@onready var card_info = card_database.CHARACTER_DATA[card_database.new().get(card_name)]
@onready var card_image = str("res://BANG!_assets/Cards/Characters/", card_info[0], ".png")


# Called when the node enters the scene tree for the first time; displays card information
func _ready():
	print(card_info)
	print(card_image)
	$card.texture = load(card_image)
	$bars/top_bar/health/CenterContainer/Label.text = str(card_info[1])


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
