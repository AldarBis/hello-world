class Desert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories) 
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
  attr_accessor :flavor
  def initialize(name, calories, flavor)
	@flavor = flavor
	super(name, calories)
  end
  def delicious?
    @flavor != "black licorice" 
  end
end


cake = JellyBean.new("Cake", 277, "black licorice")
puts cake.delicious?
puts cake.healthy?


