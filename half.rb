require 'dry/monads'

include Dry::Monads[:maybe]

def half(number)
  if number.even?
    Some(number / 2)
  else
    None()
  end
end

def result(number)
  half(number).bind do |n|
    half(n).bind do |n|
      half(n)
    end
  end
end

p result(20)
