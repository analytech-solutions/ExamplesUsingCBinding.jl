module libsdl2
	using CBinding
	using SDL2_jll
	
	c`-I$(SDL2_jll.artifact_dir)/include -L$(dirname(SDL2_jll.libsdl2_path)) -lSDL2`
	
	const c"int8_t" = Int8
	const c"int16_t" = Int16
	const c"int32_t" = Int32
	const c"int64_t" = Int64
	const c"uint8_t" = UInt8
	const c"uint16_t" = UInt16
	const c"uint32_t" = UInt32
	const c"uint64_t" = UInt64
	const c"size_t" = Csize_t
	const c"wchar_t" = Cwchar_t
	
	# define them as Cvoid since they are usually used as opaque
	const c"FILE"    = Cvoid
	const c"va_list" = Cvoid
	
	c"""
		#include <SDL2/SDL.h>
	"""ji
end



module libsdl2_image
	using CBinding
	using ..libsdl2
	using SDL2_image_jll
	
	c`-I$(libsdl2.SDL2_jll.artifact_dir)/include -L$(dirname(libsdl2.SDL2_jll.libsdl2_path)) -lSDL2 -I$(SDL2_image_jll.artifact_dir)/include -L$(dirname(SDL2_image_jll.libsdl2_image_path)) -lSDL2_image`
	
	const c"int8_t" = Int8
	const c"int16_t" = Int16
	const c"int32_t" = Int32
	const c"int64_t" = Int64
	const c"uint8_t" = UInt8
	const c"uint16_t" = UInt16
	const c"uint32_t" = UInt32
	const c"uint64_t" = UInt64
	const c"size_t" = Csize_t
	const c"wchar_t" = Cwchar_t
	
	# define them as Cvoid since they are usually used as opaque
	const c"FILE"    = Cvoid
	const c"va_list" = Cvoid
	
	c"""
		#include <SDL2/SDL.h>
	"""s
	c"""
		#include <SDL2/SDL_image.h>
	"""ji
end



module libsdl2_mixer
	using CBinding
	using ..libsdl2
	using SDL2_mixer_jll
	
	c`-I$(libsdl2.SDL2_jll.artifact_dir)/include -L$(dirname(libsdl2.SDL2_jll.libsdl2_path)) -lSDL2 -I$(SDL2_mixer_jll.artifact_dir)/include -L$(dirname(SDL2_mixer_jll.libsdl2_mixer_path)) -lSDL2_mixer`
	
	const c"int8_t" = Int8
	const c"int16_t" = Int16
	const c"int32_t" = Int32
	const c"int64_t" = Int64
	const c"uint8_t" = UInt8
	const c"uint16_t" = UInt16
	const c"uint32_t" = UInt32
	const c"uint64_t" = UInt64
	const c"size_t" = Csize_t
	const c"wchar_t" = Cwchar_t
	
	# define them as Cvoid since they are usually used as opaque
	const c"FILE"    = Cvoid
	const c"va_list" = Cvoid
	
	c"""
		#include <SDL2/SDL.h>
	"""s
	c"""
		#include <SDL2/SDL_mixer.h>
	"""ji
end



module libsdl2_gfx
	using CBinding
	using ..libsdl2
	using SDL2_gfx_jll
	
	c`-I$(libsdl2.SDL2_jll.artifact_dir)/include -L$(dirname(libsdl2.SDL2_jll.libsdl2_path)) -lSDL2 -I$(SDL2_gfx_jll.artifact_dir)/include -L$(dirname(SDL2_gfx_jll.libsdl2_gfx_path)) -lSDL2_gfx`
	
	const c"int8_t" = Int8
	const c"int16_t" = Int16
	const c"int32_t" = Int32
	const c"int64_t" = Int64
	const c"uint8_t" = UInt8
	const c"uint16_t" = UInt16
	const c"uint32_t" = UInt32
	const c"uint64_t" = UInt64
	const c"size_t" = Csize_t
	const c"wchar_t" = Cwchar_t
	
	# define them as Cvoid since they are usually used as opaque
	const c"FILE"    = Cvoid
	const c"va_list" = Cvoid
	
	c"""
		#include <SDL2/SDL.h>
	"""s
	c"""
		#include <SDL2/SDL2_framerate.h>
		#include <SDL2/SDL2_gfxPrimitives.h>
		#include <SDL2/SDL2_imageFilter.h>
		#include <SDL2/SDL2_rotozoom.h>
	"""ji
end



module libsdl2_ttf
	using CBinding
	using ..libsdl2
	using SDL2_ttf_jll
	
	c`-I$(libsdl2.SDL2_jll.artifact_dir)/include -L$(dirname(libsdl2.SDL2_jll.libsdl2_path)) -lSDL2 -I$(SDL2_ttf_jll.artifact_dir)/include -L$(dirname(SDL2_ttf_jll.libsdl2_ttf_path)) -lSDL2_ttf`
	
	const c"int8_t" = Int8
	const c"int16_t" = Int16
	const c"int32_t" = Int32
	const c"int64_t" = Int64
	const c"uint8_t" = UInt8
	const c"uint16_t" = UInt16
	const c"uint32_t" = UInt32
	const c"uint64_t" = UInt64
	const c"size_t" = Csize_t
	const c"wchar_t" = Cwchar_t
	
	# define them as Cvoid since they are usually used as opaque
	const c"FILE"    = Cvoid
	const c"va_list" = Cvoid
	
	c"""
		#include <SDL2/SDL.h>
	"""s
	c"""
		#include <SDL2/SDL_ttf.h>
	"""ji
end

