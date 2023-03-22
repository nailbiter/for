#!/usr/bin/ruby -w

# Class Vehicle {

#    Number no_of_wheels
#    Number horsepower
#    Characters type_of_tank
#    Number Capacity
#    Function speeding {
#    }
   
#    Function driving {
#    }
   
#    Function halting {
#    }
# }


# class Customer
# end

class Customer
  # class variable
  @@no_of_customers = 0

  def initialize(id,name,addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def hello
    puts "Hi, Ruby!"
  end
end

## if `initialize` above would be undef, this would work
# cust1 = Customer. new
# cust2 = Customer.new

cust3 = Customer.new("1","John","Wisdom Apartment")
cust3.hello

