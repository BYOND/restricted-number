
/*
Function list:

	//instantiate a new restricted number with minimum min, current current, and maximum max.
	New(min, current, max)

	//change the minimum value
	set_minimum(number)
	set_min(number)

	//change the maximum value
	set_maximum(number)
	set_max(number)

	//change the current value
	set_cur(number)
	set_current(number)

	//check if the number equals the minimum
	at_min()

	//check if the number equals the maximum
	at_max()

	//check if the given number equals the maximum
	is_max(number)

	//check if the given number equals the minimum
	is_min(number)

	//check if the current value is greater than the given number
	greater_than_number(num)
	gtn(num)

	//check if the current value is less than the given number
	less_than_number(num)
	ltn(num)

	//set the current value to the maximum
	set_current_to_max()

	//set the current value to minimum
	set_current_to_min()

	//return the unrounded percentage
	to_percent()

	//return the rounded percentage
	to_percent_rounded()

	//check if the current value is greater than the percent given
	greater_than_percent(perc)
	gtp(perc)

	//check if the current value is less than the percent given
	less_than_percent(perc)
	ltp(perc)

	//outputs a percentage of the number (cur/max) followed by a percent sign
	to_percent_text()

	//outputs a rounded version of to_percent_text()
	to_percent_rounded_text()

	//outputs in the format: current/maximum
	to_text()

	//basically, +=
	increase(number)
	add(number)

	//basically, -=
	decrease(number)
	sub(number)

	//basically, ++
	increment()
	i()

	//basically, --
	decrement()
	d()

	//get the maximum value of the number
	get_maximum()
	maximum()

	//get the minimum value of the number
	get_minimum()
	minimum()

	//get the current value of the number
	get_current()
	current()
	cur()

	//get the initial value of the number
	get_initial()
	init()


	//I don't really recommend this function, since if max or min changes, it probably won't work right
	//but I'm providing it anyway, because it still has it's uses
	//it changes the current to the initial value
	reset()
*/