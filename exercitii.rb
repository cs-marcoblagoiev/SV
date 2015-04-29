a = 10+3
b = "NOT"
if a == 13
	puts "#{b} true"
elsif a == 15
	# comentariu de o linie
		
else
	puts 'altceva'
end



unless a == 13 
	#cpd
end

puts "#{b} true" if a == 13

#ex 1
puts
puts "Ex 1:"

x=["Games", "Play", "Fun"]

puts x.join(" and ")

#ex 2
puts
puts "Ex 2:"

a=[["matt", "plumber"], ["phill", "baker"]]

b=a.map{|a| "name: #{a[0]} occupation #{a[1]}"}
#b=["name  #{a[0][0]} occupation: #{a[0][1]}", "name  #{a[1][0]} occupation: #{a[1][1]}"]
puts b

#ex 3
puts
puts "Ex 3:"
c=[]
a=[1,2,3,4,5,6,7]
a.each do |value|
	if value%2==0
		c.push(value * 3)
	end
end

puts c

#ex 0
puts
puts "Ex 0:"
a="the car costs 1000 and the cat costs 50"
b = a.split(" ")
b.each do |value|
	if value.length > 4
		puts value
	end
end

c=b.select{|n| n.length > 4}

puts
puts
puts c
