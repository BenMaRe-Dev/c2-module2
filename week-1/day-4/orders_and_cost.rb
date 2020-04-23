# Problem Statement
# A restaurant has incoming orders for which you need to compute the costs based on the menu.
#
# You might get multiple orders at times.



class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    # your code here
    orders.sum { |item| item[:rice] * @menu[:rice] + item[:noodles] * @menu[:noodles] }
   
  end
end

order = Restaurant.new({:rice => 3, :noodles => 2})
puts order.cost({:rice => 1, :noodles => 1}, {:rice => 2, :noodles => 2})