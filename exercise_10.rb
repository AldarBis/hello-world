class CartesianProduct
  attr_accessor :arr_res
  def initialize(arr_1, arr_2)
    @arr_res = []
    arr_1.collect {|elem| 
      arr_2.collect { |elem2| @arr_res.push([elem, elem2]) 
      }
    }
  end
 
  def each(&block)
    @arr_res.each(&block)
    self
  end
end
 
c = CartesianProduct.new([:a,:b,:c],[4,5,6])
c.each { |elt| puts elt.inspect }

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
