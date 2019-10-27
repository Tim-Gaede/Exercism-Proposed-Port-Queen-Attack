using Test

include("queen_attack.jl")


# Tests adapted from `problem-specifications//canonical-data.json` @ v2.3.0


println("\n"^2, "-"^60, "\n"^3)

# Test creation of Queens with invalid positions
@testset "Queen negative row." begin
    @test_throws DomainError Queen(-1, 3)
end
println()

@testset "Queen invalid row." begin
    @test_throws DomainError Queen(9, 5)
end
println()

@testset "Queen negative column." begin
    @test_throws DomainError Queen(3, -1)
end
println()

@testset "Queen invalid column." begin
    @test_throws DomainError Queen(5, 9)
end
println("\n")


# Test the ability of one queen to attack another
@testset "Attack false." begin
    @test can_attack(Queen(3, 5), Queen(7, 7)) == false
end
println()

@testset "Attack same row." begin
    @test can_attack(Queen(3, 5), Queen(3, 7)) == true
end
println()

@testset "Attack same column." begin
    @test can_attack(Queen(5, 6), Queen(3, 6)) == true
end
println()

@testset "Attack diagonal 1." begin
    @test can_attack(Queen(3, 3), Queen(1, 5)) == true
end
println()

@testset "Attack diagonal 2." begin
    @test can_attack(Queen(3, 3), Queen(4, 2)) == true
end
println()

@testset "Attack diagonal 3." begin
    @test can_attack(Queen(3, 3), Queen(2, 2)) == true
end
println()

@testset "Attack diagonal 4." begin
    @test can_attack(Queen(2, 8), Queen(1, 7)) == true
end
println("\n")

# Queens on same square
@testset "Queens same position can attack." begin
    @test_throws ArgumentError can_attack(Queen(3, 3), Queen(3, 3))
end
println()
