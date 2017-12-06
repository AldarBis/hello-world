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
  def initialize(flavor)
    @flavor = flavor
  end
  def delicious?
   @flavor != "black licorice"
     
  end
end

cake = JellyBean.new("black licorice")
puts cake.delicious?