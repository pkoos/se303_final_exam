# This code suffers from the "Long Function" smell.
# To cure it, apply "extract function".

def story
  first1234 = "Mr. Dursley was the director of a firm called Grunnings, which made drills."
  middle = ""
  middle << "\n"
  middle << "\n"
  middle << "\n"
  middle << "\n"
  middle << "\n"
  conclusion = "And that was it."
  first + middle + conclusion
end

def first
	"Mr. Dursley was the director of a firm called Grunnings, which made drills."
end
