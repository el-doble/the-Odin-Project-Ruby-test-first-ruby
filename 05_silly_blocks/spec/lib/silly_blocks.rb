def reverser
	yield.split(' ').map(&:reverse).join(' ')
end

def adder(number = 1)
  default = yield
  default + number
end

def repeater(repeat_number = 1)
  repeat_number.times do
    yield
  end
end