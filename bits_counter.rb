
def count_bits file_path
	data = IO.binread(file_path)
	ones = 0;
	zeros = 0;
	data.each_byte do |c| 
		 bin = c.to_s(2).rjust(8, '0')
		 ones += bin.count("1")
		 zeros += bin.count("0")
	end
	puts "fount #{ones} bits set to 1"
	puts "fount #{zeros} bits set to 1"
end
count_bits "test.jpg" ;0