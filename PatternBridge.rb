# frozen_string_literal: true

# Реалізація (інтерфейс або базовий клас для різних типів автомобілів)
class Car
	def initialize(color, maxSpeed)
		@_color = color
		@_maxSpeed = maxSpeed
	end

	def Info
		raise NotImplementedError, 'This method should be overridden in a subclass'
	end
end

# Конкретна реалізація 1 - Mercedes
class Mercedes < Car
	def Info
		"Це Mercedes кольору #{@_color.Paint}, максимальна швидкість #{@_maxSpeed} км/год"
	end
end

# Конкретна реалізація 2 - BMW
class BMW < Car
	def Info
		"Це BMW кольору #{@_color.Paint}, максимальна швидкість #{@_maxSpeed} км/год"
	end
end

# Конкретна реалізація 3 - Volkswagen
class Volkswagen < Car
	def Info
		"Це Volkswagen кольору #{@_color.Paint}, максимальна швидкість #{@_maxSpeed} км/год"
	end
end

# Абстракція - колір автомобіля
class CarColor
	def Paint
		raise NotImplementedError, 'This method should be overridden in a subclass'
	end
end

# Розширена абстракція 1 - Червоний колір
class Red < CarColor
	def Paint
		'Red'
	end
end

# Розширена абстракція 2 - Синій колір
class Blue < CarColor
	def Paint
		'Blue'
	end
end

# Розширена абстракція 3 - Жовтий колір
class Yellow < CarColor
	def Paint
		'Yellow'
	end
end

# Приклад використання

redMercedes = Mercedes.new(Red.new, 160)
blueVolkswagen = Volkswagen.new(Blue.new, 150)
yellowBMW = BMW.new(Yellow.new, 170)

puts redMercedes.Info # Виведе: "Це Mercedes кольору Red, максимальна швидкість 160 км/год"
puts blueVolkswagen.Info # Виведе: "Це Volkswagen кольору Blue, максимальна швидкість 150 км/год"
puts yellowBMW.Info # Виведе: "Це BMW кольору Yellow, максимальна швидкість 170 км/год"
