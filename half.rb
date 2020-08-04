def half(number)
  return if number.odd?

  number / 2
end

result = half 20

if !result.nil?
  result = half result

  if !result.nil?
    result = half result
  end
end

p result
