require 'dry/monads'
require 'dry/monads/do'

include Dry::Monads[:maybe]
include Dry::Monads::Do.for(:result)

def half(number)
  if number.even?
    Some(number / 2)
  else
    None()
  end
end

def result(number)
  n = yield half(number)
  n = yield half(n)
  half(n)
end

p result(20)
