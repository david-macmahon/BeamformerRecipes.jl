using BeamformerRecipes
using Test

@testset "BeamformerRecipes.jl" begin
    # Write your tests here.
    calinfo = CalInfo(
        refant = "m009",
        cal_K = rand(Float32, 63, 2),
        cal_G = rand(ComplexF32, 63, 2),
        cal_B = rand(ComplexF32, 63, 2, 1024),
        cal_all = rand(ComplexF32, 63, 2, 1024)
    )

    recipe = BeamformerRecipe(; calinfo)

    @test to_hdf5(tempname(), recipe) === nothing
end
