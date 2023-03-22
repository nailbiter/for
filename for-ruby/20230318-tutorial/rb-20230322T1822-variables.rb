#!/usr/bin/ruby -w

$global_variable = 10

class Class1
  def print_global
    puts "Global var is $global_variable"
  end
end

class Class2
   def print_global
      puts "Global variable in Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global


class Customer
  def initialize(id,name,addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  def display_details()
    puts "customer id #$cust_id"
    puts "customer id #$cust_id"
    puts "customer id #$cust_id"
  end
end
