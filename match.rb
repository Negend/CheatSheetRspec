require 'rspec'

#https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

describe "show the depths of rspec" do

  context "work through the different types of Rspec matchers" do

    it 'should test that equality matchers are different' do
      a = 1
      b = 1
      c = 1.0
      d = c

      expect(a).to  eql(b)# check to see if a equals b
      expect(a).to  equal(b)# check to see if a equals b
      expect(a).to  eql(b)# check to see if a equals b
      expect(b).not_to equal(c) # check to see if b is not equal to c
      expect(b).not_to equal(c)# check to see if b is not equal to c
      expect(b).to eq(c)# check to see if a equals b
      expect(c).to equal(d) # check to see if b is not equal to c
      expect(c).to eql(d)# check to see if b is not equal to c
      expect(c).to eq(d)# check to see if b is equal to c
    end

    it 'should test the various different type of comparison matcher' do
      d = 5
      e = 10
      f = 20

      expect(e).to be > d # check if e is greater than d
      expect(e).to be <= f #  check to see if equal to or less than f
      expect(f).to be >= e# check to see if f is greater than or equal to e
      expect(e).to be <= f# check to see if e is less than or equal to f
      expect(e).to be_between(d,f).exclusive# check whether e is between d & f
      expect(d).not_to be_between(e,f).inclusive # check whether d is NOT between e & f
    end

    it 'should test the various class type matchers' do
      g = 5.0
      h = Hash.new
      expect(g).to be_a(Float)#check if g is a float
      expect(h).to be_a(Hash)#check if h is a hash
    end

    it 'should manage responding to errors' do
      def method(n1,n2)

      end

      expect{method()}.to raise_error(ArgumentError) #check to see whether an error is raised if you pass too many arguments to a method
    end
  
  end

end