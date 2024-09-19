module MyModule
  def my_method
    puts "my_method called"
  end
end

class MyClass
  include MyModule
  # When you extend a class with a module, Ruby adds the module’s methods as class methods.
  # MyClass -> MyModule -> Object -> Kernel -> BasicObject
end

instance = MyClass.new
instance.my_method


# When you extend a class with a module, Ruby adds the module’s methods as class methods.
class AnotherClass
  extend MyModule
end

AnotherClass.my_method


### Simplified example
module M
  def method
    puts "Module M method"
  end
end

class C
  include M
  extend M
end

C.new.method
C.method