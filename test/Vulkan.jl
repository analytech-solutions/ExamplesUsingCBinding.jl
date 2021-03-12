module libvulkan
	using CBinding
	using Vulkan_Headers_jll
	
	c`$([
		"-I$(Vulkan_Headers_jll.artifact_dir)/include",
		"-DVK_ENABLE_BETA_EXTENSIONS",
		# TODO: add dependencies used when other extensions are enabled
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
	
	c"""
		#include <vulkan/vulkan.h>
	"""ji
end
