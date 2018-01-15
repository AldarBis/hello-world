class Class 
  def attr_accessor_with_history(attr_name) 
    attr_reader attr_name
      def self.my_attr_writer(attr_name) 
        @@arr = [nil]
        check = 0
        flag = false
        define_method("#{attr_name}=") do |new_value|   
	      if self != check && flag
	        @@arr = [nil]
	        flag = false
	      else
	        check = self
	        flag = true
	      end
          instance_variable_set("@#{attr_name}", new_value) 
          @@arr.push(instance_variable_get("@#{attr_name}")) 
        end 
      end 
      define_method (:bar_history) do
        print @@arr 
      end  
    my_attr_writer attr_name
  end
end 

class Foo 
  attr_accessor_with_history :bar 
end 

f = Foo.new 
f.bar = 3 
f.bar = :wowzo 
f.bar = 'boo!' 
f.bar = 343
f.bar_history 

g = Foo.new 
g.bar = 31 
g.bar = 2 
g.bar = 'Caramba!'
g.bar_history
