class T
    def method1
    	cards_array = []
    	pintas = ["Trébol", "Pica", "Corazón", "Diamante"]
    	1.times do |i|
   			card = Card.new(rand(1..13),pintas[rand(3)])
    		cards_array << card
    end
end
class Q < T
	attr_accessor :a
	def initialize (a)
	@a << method1
    end
end
