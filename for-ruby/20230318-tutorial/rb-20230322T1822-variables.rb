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
  @@no_of_customers = 0
  def initialize(id,name,addr)
    @@no_of_customers +=1
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  def display_details()
    puts "customer id #@cust_id"
    puts "customer name #@cust_name"
    puts "customer addr #@cust_addr"
  end
  def total_no_of_customers()
    puts "total num of customers #@@no_of_customers"
  end
end

c1 = Customer.new("1","abel","hanaan")
c2 = Customer.new("2","kain","hanaan")
c1.display_details
c2.display_details
c1.total_no_of_customers
c1.total_no_of_customers
