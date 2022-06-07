# This code suffers from the "Long Function" smell.
# To cure it, apply "extract function".

def story
  first1234 = "Mr. Dursley was the director of a firm called Grunnings, which made drills."
  middle1234 = ""
  middle1234 << "\n"
  middle1234 << "\n"
  middle1234 << "\n"
  middle1234 << "\n"
  middle1234 << "\n"
  conclusion = "And that was it."
  first + middle + conclusion
end

def first
	"Mr. Dursley was the director of a firm called Grunnings, which made drills."
end

def middle
	"\n\n\n\n\n"
end

def conclusion
	"And that was it."
end
