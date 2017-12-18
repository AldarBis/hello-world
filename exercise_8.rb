


class Class
def initialize 
    @data = nil 
  end 
  $arr = [nil] 
  def my_attr_reader(var_name) 
    define_method(var_name) do 
      instance_variable_get("@#{var_name}") 
    end 
  end 
  def my_attr_writer(var_name) 
    define_method("#{var_name}=") do |new_value| 
      instance_variable_set("@#{var_name}", new_value)
      if self.changed
        $arr = [nil] 
		end
      $arr.push(new_value) 
    end 
  end 
  
  
  def my_attr_accessor_with_history(var_name)
    class_eval do 
	def data_history 
	
      print $arr 
	  end
    end 
    my_attr_reader var_name 
    my_attr_writer var_name
  end
end

class Entity 
  my_attr_accessor_with_history :data
end 


entity = Entity.new 
entity.data_history
entity.data = 1 
entity.data = :wss 
entity.data = 'boo!' 
entity.data = :ccccc 
entity.data_history 
g = Entity.new
g.data = 21
g.data = 31
g.data_history
