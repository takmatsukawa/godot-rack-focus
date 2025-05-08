extends Node3D

@onready var label = $CanvasLayer/Dialogue

# 表示する字幕リスト（時間：テキスト）
var subtitles = [
	{ "time": 1.0, "text": "Let's get down to brass tacks, gentleman.\nIf I was informed correctly," },
	{ "time": 3.5, "text": "the clock is ticking, is that right?\nJimmie?" },
	{ "time": 6.0, "text": "Oh, one handred percent." }
]

var current_index = 0
var timer := 0.0

func _process(delta):
	timer += delta
	
	if current_index < subtitles.size():
		var entry = subtitles[current_index]
		if timer >= entry.time:
			label.text = entry.text
			current_index += 1
