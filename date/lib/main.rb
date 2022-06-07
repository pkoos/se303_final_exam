# Refactor.
# Hint: Don't change the constructor parameter list for this
#       refactoring.
# Hint: Let the existing code use the new code.

class Farm

  attr_reader :plots

  def initialize
    # Plots have a name and some plants
    plot_a = ["Plot A", ["Sugar Baby", 3], ["Red Boomer", 1], ["Plump Pucker", 1]]
    plot_b = ["Plot B", ["Green Lady", 2], ["Dark Plump", 2], ["Rainbow", 1], ["Deep Darkness", 1]]
    @plots = [plot_a, plot_b]
  end

  def number_of_plots
    plots.size
  end

  def total_number_of_plants
                  # Subtract one from size because name is not a plant
    plots.reduce(0) { |total, plot| total += (plot.size - 1) }
  end

  def total_plant_heights
    total = 0
    plots.each do |plot|
      # Remove the plot name before iterating over the plants.
      plot.drop(1).each do |plant|
        total += plant[1]
      end
    end
    total
  end

end