# Situation: Two ships in beginning of battle.
# Engage? Battle?

def chance
	rand(2) < 1
end

def dogfight(advantage)
	puts rand(99) < advantage ? "Direct hit! Enemy is toast." : "You missed! Bandit is firing back! Enemy scores a hit. You are done."
	game_over
end

def scenario(text)
	puts text
end

def game_over
	puts "Reload game? (yes or no)"
	reload = gets.chomp
	case reload
	when "yes"
			load "my_first_repl_game.rb"
	when "no"
			puts "Thanks for playing!"
	else
			put "Sorry, invalid entry."
			game_over
	end
end

# puts `clear`
puts "You are piloting a starfighter flying in hostile territory.", "Your sensors detect an enemy starfighter!", 'Do you "engage" or "avoid" detection?'

choice = gets.chomp
case choice
when "engage"
	puts "As you approach the bandit sees you!"
	if chance
		scenario("The enemy is coming at you! You have the initiative. You should probably start firing at them. 'Fire!'")
		battle = gets.chomp
		case battle
		when "Fire!"
			dogfight(59)
		else
			puts 'You needed to "Fire!" Enemy vaporizes you. Too easy.'
			game_over
		end
	else
		puts "They are fleeing! Your presence keeps us in control of this space."
		game_over

	end
when "avoid"
	# Random chance bandit see you.
	if chance
		scenario("You escaped the enemy! You also gave up control of this space. A court-martial may be in order for you.")
		game_over
	else
		puts "Too late! Bandit is giving chase!", "Maybe you should do your job and fight?", "Your fight is tougher since he has got you on sight. So, do you 'fight' or 'run'?"
		battle = gets.chomp
		case battle
		when "fight"
			dogfight(39)
		else "run"
			puts "Wow, still running?"
			if chance
				scenario("Bandit shoot you down like the dog you are. How'd you get your wings?")
				game_over
			else
				puts "You got away! Cowards die many times before their deaths."
				game_over
			end
		end
	end
else
	if chance
		scenario("Your panicked response gives the bandit the initative. Luckily they disappear from sensors.")
		game_over
	else
	puts "Engage or avoid. You need to be clear. Unfortunately the enemy is barreling down on you.", 'Your fight is tougher since he has got you on sight. So, do you "fight" or "run"?'
		battle = gets.chomp
		case battle
		when "fight"
			dogfight(39)
		else "run"
			puts "C'mon, man. Weren't you trained??"
			if chance
				scenario("You are flying like a headless chicken. Now you're dead.")
				game_over
			else
				puts "You got away! Somehow...congratulations?"
				game_over
			end
		end
	end
end