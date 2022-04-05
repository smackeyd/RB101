def num_select
  [1, 2, 3].select do |num|
    num.odd?
  end
end

p num_select # array IS CHANGED and RETURNS A NEW COLLECTION!!!!!