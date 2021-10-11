module libcsfml
	using CBinding
	
	# NOTE: Libglvnd_jll and GLU_jll are only available for Linux
	@static if Sys.islinux()
		@eval using Libglvnd_jll
		@eval using GLU_jll
		@eval using CSFML_jll
		
		@eval c`$([
			Main.SYSROOT...,
			
			"-I$(Libglvnd_jll.artifact_dir)/include",
			"-L$(dirname(Libglvnd_jll.libGL_path))", "-lGL",
			
			"-I$(GLU_jll.artifact_dir)/include",
			"-L$(dirname(GLU_jll.libGLU_path))", "-lGLU",
			
			"-I$(CSFML_jll.artifact_dir)/include",
			"-L$(dirname(CSFML_jll.libcsfml_system_path))", "-lcsfml-system",
			"-L$(dirname(CSFML_jll.libcsfml_audio_path))", "-lcsfml-audio",
			"-L$(dirname(CSFML_jll.libcsfml_graphics_path))", "-lcsfml-graphics",
			"-L$(dirname(CSFML_jll.libcsfml_network_path))", "-lcsfml-network",
			"-L$(dirname(CSFML_jll.libcsfml_window_path))", "-lcsfml-window",
		])`
		
		@eval const c"size_t" = Csize_t
		@eval const c"wchar_t" = Cwchar_t
		
		@eval c"""
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
end
