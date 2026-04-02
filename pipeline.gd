extends Node

func _ready() -> void:
	print("_ready called")
	
	var device = RenderingServer.create_local_rendering_device()
	
	var shader_file = load('./shader.glsl')
	var spirv = shader_file.get_spirv()
	var shader = device.shader_create_from_spirv(spirv)
	
	var _pipeline = device.compute_pipeline_create(shader)
	print("fin")
