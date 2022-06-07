# This one has two parts. Both are smells related to loops.

# Apply the "split loop" refactoring.

def total_and_smallest
  data = [23, 15, 8, 16, 4, 42]
  smallest = data.first
  total = 0
	data.each do |d|
		total += d
	end
  data.each do |d|
    if d < smallest
      smallest = d
    end
  end
  [total, smallest]
end


# Apply the "replace loop with pipeline" refactoring.

def repeat
	"Thisisthedatatouse"
end
