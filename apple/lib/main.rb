# This code suffers from the "Long Function" smell.
# To cure it, apply "extract function".

def story
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
