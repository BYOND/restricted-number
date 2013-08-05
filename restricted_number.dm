
/*
Restricted
A datum designed to make numerical keeping a lot easier.
It forces the number to stay always between an upper and lower bound.
Original idea: http://www.byond.com/members/BYONDAnime?command=view_post&post=98823
*/

restricted

	var
		//the initial value of the number
		initial

		//the minimum value of the number
		minimum

		//the current value of the number
		current

		//the maximum value of the number
		maximum

	New(minimum = 0, current = 100, maximum = 100)
		src.minimum = minimum
		src.maximum = maximum
		src.initial = current
		set_current(current)

	proc
		//is-at functions

		at_min()
			return current == minimum

		at_max()
			return current == maximum


		//check-if functions

		is_max(number)
			return number == maximum

		is_min(number)
			return number == minimum

		greater_than_number(num)
			return current > num

		gtn(num)
			return greater_than_number(num)

		less_than_number(num)
			return current < num

		ltn(num)
			return less_than_number(num)


		//setter functions

		set_maximum(number)
			maximum=max(minimum, number)
			set_current(get_current())

		set_minimum(number)
			minimum=min(maximum, number)
			set_current(get_current())

		set_current(number)
			number = max(minimum, number)
			number = min(maximum, number)
			src.current = number

		set_min(number)
			set_minimum(number)

		set_max(number)
			set_maximum(number)

		set_cur(number)
			set_current(number)

		set_current_to_max()
			set_current(maximum)

		set_current_to_min()
			set_current(minimum)


		//percentage functions

		to_percent()
			return (current/maximum)*100

		to_percent_rounded()
			return round((current/maximum)*100)

		greater_than_percent(perc)
			return current > maximum*(perc/100)

		gtp(perc)
			return greater_than_percent(perc)

		less_than_percent(perc)
			return current < maximum*(perc/100)

		ltp(perc)
			return less_than_percent(perc)


		//"pretty print" functions

		to_percent_text()
			return "[to_percent()]%"

		to_percent_rounded_text()
			return "[to_percent_rounded()]%"

		to_text()
			return "[current] / [maximum]"


		//getter functions

		get_current()
			return current

		get_maximum()
			return maximum

		get_minimum()
			return minimum

		get_initial()
			return initial

		//various numeric functions

		//++
		i()
			increment()

		//--
		d()
			decrement()

		//+=
		add(number)
			increase(number)

		//-=
		sub(number)
			decrease(number)

		//++
		increment()
			increase(1)

		//--
		decrement()
			decrease(1)

		//+=
		increase(number)
			set_current(current + number)

		//-=
		decrease(number)
			increase(-number)

		//get_maximum wrapper
		maximum()
			return get_maximum()


		//get_minimum wrapper
		minimum()
			return get_minimum()


		//get_current wrapper
		current()
			return get_current()

		cur()
			return get_current()


		//get_initial wrapper

		init()
			return get_initial()


		//I don't really recommend this function, since if max or min changes, it probably won't work right
		//but I'm providing it anyway, because it still has it's uses
		reset()
			set_current(initial)

