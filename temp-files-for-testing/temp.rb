class SuperHero
	def name
		"Wonder Woman"
	end

	def home
		"Paradise Island"
	end

	def fight_crime
		name + " is fighting crime in " + home + "!!!"
	end
end

hero = SuperHero.new
puts hero.fight_crime
puts SuperHero.new.fight_crime
