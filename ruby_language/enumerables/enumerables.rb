# Enumerable is a module
# it mixing in to Array, Hash, Range, Set, etc
# provides set of methods to traverse, search, sort, filter, etc

# code block is a chunk of code that can be passed to a method
# { puts "Hello" } - format single line blocks, return data, no changes
# do |local var|... end - format multiline blocks, perform action, make changes

array.each { |element| puts element } # single line block with block variable
scores.each { |k, v| puts "#{k}: #{v}" } # single line block with two block variables

# Enumerable methods can be overridden to provide custom behavior
class CustomCollection
  include Enumerable

  def initialize(items)
    @items = items
  end

  # shortcut
  # & - convert block to Proc object
  def each(&block)
    @items.each(&block)
  end
end

# block isn't an object but you can pass it to a method
# proc = procedure - block converted to an object
# &block - syntax in the method definition (block to proc object)

class TaskScheduler
  def initialize
    @tasks = []
  end

  def schedule(&task)
    @tasks << task
  end

  def run
    @tasks.each do |task|
      task.call
    end
  end
end

scheduler = TaskScheduler.new
scheduler.schedule { puts "Hello" }
scheduler.schedule { puts "World" }
scheduler.run
