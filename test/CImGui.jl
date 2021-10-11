module libcimgui
	using CBinding
	using CImGui_jll
	
	c`$([
		Main.SYSROOT...,
		
		"-DCIMGUI_DEFINE_ENUMS_AND_STRUCTS=1",
		"-I$(CImGui_jll.artifact_dir)/include",
		"-L$(dirname(CImGui_jll.libcimgui_path))", "-lcimgui",
	])`
	
	const c"int8_t" = Int8
	const c"int16_t" = Int16
	const c"int32_t" = Int32
	const c"int64_t" = Int64
	const c"uint8_t" = UInt8
	const c"uint16_t" = UInt16
	const c"uint32_t" = UInt32
	const c"uint64_t" = UInt64
	const c"size_t" = Csize_t
	
	# define them as Cvoid since they are usually used as opaque
	const c"FILE"    = Cvoid
	const c"va_list" = Cvoid
	
	c"""
		#include <cimgui.h>
	"""ji
end
