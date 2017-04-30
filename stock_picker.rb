def stock_picker (input)
  best = 0
  bestdays = []
  input.length.times do |i|
    j = i
    for j in i ... input.length
      if input[j]-input[i] >best
        best = input[j]-input[i]
        bestdays[0] = i
        bestdays[1] = j
      end
    end
  end
  return bestdays
end


puts stock_picker([17,3,6,9,15,8,6,1,10])
