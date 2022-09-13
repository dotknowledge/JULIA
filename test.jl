# Testing Julia
using Statistics, Random, Distributions, LinearAlgebra, StatsPlots
#Variables

# Returns random D(n) "dice roll"
roll_die(n::Integer) = rand(1:n)

function get_roll(k,n)
    rolls = []
    for r in 1:k
        push!(rolls, roll_die(n))
    end
    rolls
end


#roll = get_roll(3, 6)
#attributeRolls = [sum(get_roll(2,8))+2 for r in 1:6#]
#altAttribs = attributeRolls[attributeRolls .> 6]
#println(mean(attributeRolls),"  ", mean(altAttribs), "  ", size(altAttribs))

#histogram(altAttribs)

function get_attribs()
    sum(rand(2:6, (3,6)), dims=1)
end

attributes = vec(get_attribs())
character = Dict(zip(("str", "dex", "con", "int", "wis", "cha"), attributes))
println(character)
