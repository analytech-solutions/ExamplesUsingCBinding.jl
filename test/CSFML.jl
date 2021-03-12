module libcsfml
	using CBinding
	using CSFML_jll
	
	c`$([
		"-I$(CSFML_jll.artifact_dir)/include",
		"-L$(dirname(CSFML_jll.libcsfml_system_path))", "-lcsfml-system",
		"-L$(dirname(CSFML_jll.libcsfml_audio_path))", "-lcsfml-audio",
		"-L$(dirname(CSFML_jll.libcsfml_graphics_path))", "-lcsfml-graphics",
		"-L$(dirname(CSFML_jll.libcsfml_network_path))", "-lcsfml-network",
		"-L$(dirname(CSFML_jll.libcsfml_window_path))", "-lcsfml-window",
	])`
	
	const c"size_t" = Csize_t
	const c"wchar_t" = Cwchar_t
	
	c"""
		#include <SFML/System.h>
		#include <SFML/Config.h>
		#include <SFML/GPUPreference.h>
		#include <SFML/Graphics.h>
		#include <SFML/Network.h>
		#include <SFML/OpenGL.h>
		#include <SFML/System.h>
		#include <SFML/Window.h>
	"""ji
end
