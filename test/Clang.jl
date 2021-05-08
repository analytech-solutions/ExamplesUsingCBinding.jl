module libclang
	using CBinding
	using Clang_jll
	
	c`-fparse-all-comments -I$(Clang_jll.artifact_dir)/include -L$(dirname(Clang_jll.libclang_path)) -lclang`
	
	const c"time_t" = Cvoid  # what is time_t?
	const c"size_t" = Csize_t
	
	c"""
		#include <clang-c/Documentation.h>
		#include <clang-c/Index.h>
	"""ji
end
