module ModuleName

  ### Constants
  CONSTANT_ONE = 1
  CONATANT_TWO = "TWO"


  ### Module Methods (Singleton Methods)
  def self.module_method
    # called on the module itself (might need to require the module file)
  end

  def ModuleName.module_method
    # for defining outside original module block
    # helpful for extending ThirdPartyModules
  end


  ### Instance Methods (for Mixins)
  def instance_method_one
    helper_method
    # logic
  end

  def instance_method_two(params)
    # logic
  end


  ### module_function
  def utility_method
    # Use Case: Ideal for utility methods that are useful both independently and within classes, without exposing them publicly when included
  end

  # utility_method is available as a module method and as a private instance method inside the including class (but don't pullute public interface of the class - better incapsulation?)
  module_function :utility_method


  ### Aliasing Methods within Module
  # alias_method :new_name, :old_name
  alias_method :original_instance_method, :instance_method_one
  def instance_method_one
    # new updated logic for instance_method_one
  end

  ### Defining Private Methods
  private

  def helper_method
    # Use private for Helper Methods:
    # Keep internal methods hidden from external access
  end


  ### Defining Protected Methods
  # Use protected for Inter-Instance Interaction
  # Allow controlled access between instances within the same class hierarchy.
  protected

  def compare_objects(other)
    if other.protected_compare(self)
      puts "Objects are comparable."
    else
      puts "Objects are not comparable."
    end
  end

  def protected_compare(other)
    # Example logic
    self.object_id == other.object_id
  end
end