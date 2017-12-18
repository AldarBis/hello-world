


class Class
  def initialize 
    @bar = nil 
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
      $arr.push(new_value) 
    end 
  end 
  
  
  def my_attr_accessor_with_history(var_name)
    class_eval do 
	def bar_history 
      print $arr 
	  end
    end 
    my_attr_reader var_name 
    my_attr_writer var_name
  end
end

class Foo 
  my_attr_accessor_with_history :bar
end 

f = Foo.new 
f.bar = 3
f.bar = :wowzo 
f.bar = 'boo!'
f.bar_history

