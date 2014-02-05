class Subarray

  def self.greatest_from(input)
    largest = finds_largest_subarray(input)
    [largest.inject(:+)]
  end

  def self.finds_largest_subarray(input)
    input.max do |a,b|
      a.inject(:+) <=> b.inject(:+)
    end
  end
end
