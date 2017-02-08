#1- respuesta numero 1
class T
    def method1()
    end
end

a = T.new()
a.method1


#2- respuesta numero 2 
class T
   	def self.method1()
   	end
end
T.method1

#3- respuesta numero 3
module Prueba
    A = 5
    def self.B
    end
end
Prueba::A

#4- respuesta numero 4
class Complejo
	attr_accessor :x, :y
    def initialize(x, y)
        @x = x
        @y = y
    end
    def complejo
        Complejo.new(@x + complejo.x, @y + complejo.y)
    end
end

#5- respuesta numero 5
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

a = Q.new()
a.method1

#6- respuesta numero 6
module Stockable
	Stock = 2
	def has_stock?
        Stock > 0
	end	
end



module Priceable
    attr_accessor :price
    def discoutend_price(discount)
        @price - @price * discount
    end
end
class Product
    include Priceable
    def initialize(price)
        @price = price
    end
    extend Stockable
end

print Product.has_stock?

#7-respuesta numero 7
class Car 
    @@t_instances = 0
    @@q_instances = 0
end

class Q < Car
    def initialize 
        @@q_instances += 1
    end    
    def self.init_q
        @@q_instances  
    end      
end


class T < Car 
    def initialize 
        @@t_instances += 1
    end    
    def self.init_t
        @@t_instances += 1
    end    
end
20.times do 
t = T.new   
end
25.times do 
q = Q.new   
end
puts Q.init_q
puts T.init_t