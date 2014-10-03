#Input
puts "Please enter a number"
num = gets.to_f

#Collect data
f = File.new("calculators.dat", "a+")
data = f.readlines
size = data.length
sum = 0
data.each do |num|
	sum = sum + num.to_f
end

f.puts num
f.close

average = sum / size

#Output

puts "The average is #{average.round(5)}" 


#Find the Z-Score

f = File.new("calculators.dat", "r")
dat = f.readlines
sum2 = 0
dat.each do |numb|
	sum2 = sum2 + ((numb.to_f - average)**2)
end
f.close
sum2 = sum2 / size
zscore = sum2**0.5
#Second output

puts "The Z-score of this data is #{zscore.round(5)}"
