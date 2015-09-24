def max_slice(ary)
  return [ary.max] if ary.all? { |i| i < 0 }

  ary.chunk { |i| i < 0 }.to_a.flatten(1)
  .select { |slice| Array === slice }
  .max_by { |slice| slice.reduce(:+) }
end
