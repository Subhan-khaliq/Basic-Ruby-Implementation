class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  def show()
    puts "This Customer Information is : Id #{@cust_id} Name #{@cust_name} Address #{@cust_addr}"
  end
end

cust1 = Customer.new(1,"Subhan Khaliq", "Street Tori Wali, Garjak, Gujranwala")
cust2 = Customer.new(2,"Afnan", "Liaqat Road, Gujranwala")

cust1.show()


$number  = 2234
class Car
  @@no_of_customers = 0
  VAR1 =100
  def show_variables()

    puts "This Car has #{$number} and constant number #{VAR1}"
  end

  def total_customers()
    @@no_of_customers+=1
    puts "The total number of customers are #{@@no_of_customers}"
  end

end

class Truck
  def show_variables()
    puts "This truck has #{$number}"
  end
end

x = Car.new
z = Car.new
y = Truck.new

x.show_variables()
z.show_variables()
y.show_variables()
x.total_customers()
z.total_customers()

