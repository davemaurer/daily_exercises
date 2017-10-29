class SuperHero

	attr_reader :powers, :name

	def initialize(hero_name)
		@name = hero_name
		@powers = []
	end

end

hero = SuperHero.new
puts hero.fight_crime
puts SuperHero.new.fight_crime

