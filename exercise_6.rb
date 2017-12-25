class Desert
  attr_accessor :name
  attr_accessor :calories
  attr_accessor :flavor
  def initialize(name, calories, flavor)
    @flavor = flavor 
    @name = name
    @calories = calories
  end
  def healthy?
     @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Desert
  def delicious?
   @flavor != "black licorice"
     
  end
end

cake = JellyBean.new("Cake", 277, "black licorice")
puts cake.delicious?
