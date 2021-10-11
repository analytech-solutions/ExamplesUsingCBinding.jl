using Test
using CBinding


const SYSROOT = Sys.isapple() ? ["-isysroot", joinpath(strip(String(read(`xcrun xcode-select --print-path`))), "Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk")] : []

@testset "Examples using CBinding.jl" begin
	for entry in readdir(@__DIR__)
		endswith(entry, ".jl") || continue
		entry == "runtests.jl" && continue
		
		@testset "$(first(splitext(entry)))" begin
			@test (@eval include($(entry))) isa Module
		end
	end
end

