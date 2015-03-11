require 'pry'

hello = String.new("hello")


hello.respond_to?(:class)  # true
hello.methods.grep(/class/)


Fixnum.class  # => Class
String.class  # => Class

# This is where it gets fucking weird
# Just go with it...

Class.class # => Class
Class.superclass # => Module
Module.class # => Class

Module.superclass # => Object
Object.class # => Class

# The end of the line
Object.superclass # => BasicObject
BasicObject.superclass # => nil there is no where else to go!

# Kernel.methods

#################
#  BasicObject  #
#################
      ##
   # Kernel # Module that gets included (provides lots of funcitonality)
      ##
#################
#    Object     #
#################
      ##
      ##
#################
#    Module     #
#################
      ##
      ##
#################
#    Class      #
#################

class MyClass
  def initialize
    @name = "My Class"
  end
end

# MyClass => Object => BasicObject

module Enumerable
  def upvote
    "You just upvoted!"
  end
end

class MyModuleClass
  include Enumerable

  def initialize
    @name = "Working?"
  end

  def upvote
    "you just downvoted"
  end
end
binding.pry

# ancestors => [MyModuleClass, Votable, Object, Kernel, BasicObject]
# (Votable and Kernel are both Modules)

