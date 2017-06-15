require 'rspec'
#FIZZ BUZZ TEST
RSpec.describe "fizzbuzz works" do
	it " fizzbuzz array should contain 100 elements"do
	fizzbuzz = Fizzbuzz.new(100)

	expect(fizzbuzz.array.length).to eql(100)
	end

	it "if every number in the array divisible by only three returns Fizz" do
		array =Fizzbuzz.new 100
		expect(array.check_element(33)).to eql('Fizz')		
	end
	it "if every number in the array divisible by only five return Buzz" do
		array =Fizzbuzz.new 100
		expect(array.check_element(25)).to eql('Buzz')
	end

	it "if every number in the array divisible by only fifteen return FizzBuzz" do
		array =Fizzbuzz.new 100
		expect(array.check_element(45)).to eql('FizzBuzz')
	end

	it "if every number in the array not divisible by 3 or 5 return number" do
		array =Fizzbuzz.new 100
		expect(array.check_element(43)).to be_a(Integer)
	end

	it "if 3 returns fizz 5returns buzz and 15 fizzbuzz" do
		array =Fizzbuzz.new 100
		expect(array.check_element(3)).to eql('Fizz')
		expect(array.check_element(5)).to eql('Buzz')
		expect(array.check_element(15)).to eql('FizzBuzz')
		expect(array.check_element(2)).to be_a(Integer)		
	end


end

class Fizzbuzz
	attr_accessor :array
	def initialize n
		@array = []
		for i in 1..n
			if i % 15 == 0
			x = 'FizzBuzz'
			elsif i % 3 == 0
				x = 'Fizz'
			elsif i % 5 == 0
				x = 'Buzz'
			else 
				x = i			
			end
			@array.push(x)
		end
		@array
	end

	def check_element n1
		@array[n1-1]
	end

end





