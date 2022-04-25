extends Control


var time

func _on_Button_pressed():
	var command = "shutdown -s -t "+str(int(get_node("Panel/TextEdit").text)*3600)
	print(command)
	var output =[]

	OS.execute('powershell', [command], false, output)



func _on_Cancel_pressed():
	var output =[]
	OS.execute('powershell', ["shutdown -a"], false, output)
