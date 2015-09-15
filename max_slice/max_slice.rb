def max_slice(ary)
  first_slice = ary.slice_before { |i| i < 0 }

  second_slice = first_slice.map do |ary_slice|
    ary_slice.slice_when { |i| i < 0 }.to_a
  end.flatten(1)

  second_slice.max do |slice|
    slice.reduce(:+)
  end
end
