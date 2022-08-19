katz_deli=[]

def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty." 
    else 
        line_status = "The line is currently:"
        katz_deli.each.with_index(1) { |in_queue, pos| line_status << " #{pos}. #{in_queue}" }
        puts line_status
    end
end

#================================================================
def take_a_number(katz_deli, last_customer)
    katz_deli << last_customer
    puts "Welcome, #{last_customer}. You are number #{katz_deli.size} in line." 
end

#================================================================
def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!" 
    else 
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    end
end