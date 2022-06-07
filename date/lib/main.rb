# Refactor.
# Hint: Don't change the constructor parameter list for this
#       refactoring.
# Hint: Let the existing code use the new code.

class Farm

  attr_reader :plots

  def initialize
    # Plots have a name and some plants
		plot_a = Plot.new('Plot A', [Plant.new('Sugar Baby', 3), Plant.new('Red Boomer', 1), Plant.new('Plump Pucker', 1)])
		plot_b = Plot.new('Plot B', [Plant.new('Green Lady', 2), Plant.new('Dark Plump', 2), Plant.new('Rainbow', 1), Plant.new('Deep Darkness', 1)])
		@plots = [plot_a, plot_b]
  end

  def number_of_plots
    plots.size
  end

  def total_number_of_plants
		total = 0
    plots.each { |plot| total += (plot.total_number_of_plants) }
		total
  end

  def total_plant_heights
    total = 0
    plots.each { |plot| total += plot.total_plant_heights }
    total
  end

end

class Plant
	attr_reader :name, :height
	def initialize(name, height)
		@name = name
		@height = height
	end
end

class Plot
	attr_reader :name, :plants
	def initialize(name, plants)
		@name = name
		@plants = plants
	end

	def total_number_of_plants
		plants.size
	end

	def total_plant_heights
		total = 0
		plants.each { |plant| total += plant.height }
		total
	end
end