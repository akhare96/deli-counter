# Write your code here.

katz_deli = []

#method that shows customers their current place in line
def line(katz_deli)
    if katz_deli.size >= 1
        current_line = "The line is currently:"
        katz_deli.each.with_index(1) {
            |name, index| current_line << " #{index}. #{name}"
        }
        puts current_line
    else
        puts "The line is currently empty."
    end
end

#puts the customer's name along with their position in line
def take_a_number(katz_deli, new_customer)
    katz_deli.push(new_customer)
    puts "Welcome, #{new_customer}. You are number #{katz_deli.size} in line."
end

#puts next person in line then removes from front
def now_serving(katz_deli)
    if katz_deli.size >= 1
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    else
        puts "There is nobody waiting to be served!"
    end
end