# Refactor.
# Hint: Don't change the constructor parameter list for this
#       refactoring.
# Hint: Let the existing code use the new code.

class Farm

  attr_reader :plots

  def initialize
    # Plots have a name and some plants
		plot_a = [["Sugar Baby", 3], ["Red Boomer", 1], ["Plump Pucker", 1]]
		plot_b = [["Green Lady", 2], ["Dark Plump", 2], ["Rainbow", 1], ["Deep Darkness", 1]]
    
		plot_a = Plot.new('Plot A', [Plant.new('Sugar Baby', 3), Plant.new('Red Boomer', 1), Plant.new('Plump Pucker', 1)])
		plot_b = Plot.new('Plot B', [Plant.new('Green Lady', 2), Plant.new('Dark Plump', 2), Plant.new('Rainbow', 1), Plant.new('Deep Darkness', 1)])
		@plots = [plot_a, plot_b]
  end

  def number_of_plots
    plots.size
  end

  def total_number_of_plants
		total = 0
                  # Subtract one from size because name is not a plant
    plots.each { |plot| total += (plot.total_number_of_plants) }
		total
  end

  def total_plant_heights
    total = 0
    plots.each do |plot|
			total += plot.total_plant_heights
      # Remove the plot name before iterating over the plants.
      # plot.each do |plant|
      #   total += plant[1]
      # end
    end
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
		# Subtract one from size because name is not a plant
		plants.size
	end

	def total_plant_heights
		total = 0
		plants.each do |plant|
			total += plant.height
		end
		total
	end
end