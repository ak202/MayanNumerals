module MayanNumerals

export covert

convtable = Dict([
									(0,"\U1D2E0"),
									(1,"\U1D2E1"),
									(2,"\U1D2E2"),
									(3,"\U1D2E3"),
									(4,"\U1D2E4"),
									(5,"\U1D2E5"),
									(6,"\U1D2E6"),
									(7,"\U1D2E7"),
									(8,"\U1D2E8"),
									(9,"\U1D2E9"),
									(10,"\U1D2EA"),
									(11,"\U1D2EB"),
									(12,"\U1D2EC"),
									(13,"\U1D2ED"),
									(14,"\U1D2EE"),
									(15,"\U1D2EF"),
									(16,"\U1D2F0"),
									(17,"\U1D2F1"),
									(18,"\U1D2F2"),
									(19,"\U1D2F3")
									])

function convert(num::Int)
	if num < 0 | num > 19
		return "0-19 please"
	else
		return get(convtable, num, "wrong for some other reason")
	end
end

end # module
