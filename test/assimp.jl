module libassimp
	using CBinding
	using assimp_jll
	
	c`$([
		Main.SYSROOT...,
		
		"-I$(assimp_jll.artifact_dir)/include",
		"-L$(dirname(assimp_jll.libassimp_path))", "-lassimp",
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
		#include <assimp/cfileio.h>
		#include <assimp/cimport.h>
		#include <assimp/cexport.h>
		#include <assimp/postprocess.h>
		#include <assimp/pbrmaterial.h>
		#include <assimp/scene.h>
		#include <assimp/version.h>
	"""ji
end
