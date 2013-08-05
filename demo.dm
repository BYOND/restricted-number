
mob
	var/restricted
		hp = new /restricted(minimum=0, current=1000, maximum=1000)
		ep = new /restricted(minimum=0, current=50,	  maximum=100)

	Stat()
		statpanel("Stats")
		stat("Health: ", "[hp.to_text()]")
		stat("Health Percentage: ", "[hp.to_percent_text()]")
		stat("Health Rounded Percentage: ", "[hp.to_percent_rounded_text()]")
		stat("Energy: ", "[ep.to_text()]")
		stat("Energy Percentage: ", "[ep.to_percent_text()]")
		stat("Energy Rounded Percentage: ", "[ep.to_percent_rounded_text()]")

	verb
		change_max_health(i as num)
			hp.set_maximum(i)

		take_random_damage()
			var/x = rand(hp.minimum(), hp.maximum())
			hp.decrease(x)
			src << "You took [x] damage!"

		heal_random_damage()
			var/x = rand(hp.minimum(), hp.maximum())
			hp.increase(x)
			src << "You healed [x] damage!"

		take_damage(i as num)
			hp.decrease(i)
			src << "You took [i] damage!"

		heal_damage(i as num)
			hp.increase(i)
			src << "You healed [i] damage!"

		epic_training_montage()
			while(!ep.at_min())
				ep.decrease(10)
				sleep(20)

			src << "Your montage was successful!"

		rest()
			while(!ep.at_max())
				ep.increase(20)
				sleep(20)

			src << "Whoo, you feel rested!"

	New()
		..()
		for(var/o in verbs)
