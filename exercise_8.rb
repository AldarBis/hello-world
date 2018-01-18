module CustomAttrAccessor
  def attr_accessor_with_history(attr_name) 

    attr_name = attr_name.to_s
    attr_name_history = attr_name.to_s + "_history"
    
    self.class.send(:define_method, "#{attr_name_history}=".to_sym) do |value|
      instance_variable_set("@#{attr_name_history}", value)
    end

    self.class.send(:define_method, attr_name_history.to_sym) do
      instance_variable_get("@#{attr_name_history}")
    end

    self.class.send(:define_method, "#{attr_name}=".to_sym) do |value|
      history = instance_variable_get("@#{attr_name_history}") || [nil]
      history << value
      instance_variable_set("@#{attr_name}", value)
      instance_variable_set("@#{attr_name_history}", history)
    end

    self.class.send(:define_method, attr_name.to_sym) do
      instance_variable_get("@#{attr_name}")
    end
  end
end

class Foo
  include CustomAttrAccessor

  def initialize
    attr_accessor_with_history :bar
    attr_accessor_with_history :second_bar
  end

end 

f = Foo.new

f.bar = 1
f.bar = 10

f.second_bar = 12
f.second_bar = 13
f.second_bar = 23

p f.bar_history
p f.second_bar_history
