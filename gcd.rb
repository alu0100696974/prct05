def gcd(num, den)
num, den = num.abs, den.abs
	while den != 0
	num,den = den, num % den
	end
num
end

