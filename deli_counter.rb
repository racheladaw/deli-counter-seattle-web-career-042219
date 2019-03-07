katz_deli = []

def line(current_line)
  if current_line.length == 0
    puts "The line is currently empty."
  else
    line_string = "The line is currently: "
    current_line.each_with_index { |name, index|
      line_string += "#{index + 1}. #{name} "
    }
    puts line_string.chomp(" ")
  end
end

def take_a_number(current_line, name)
  current_line.push(name)
  puts "Welcome, #{name}. You are number #{current_line.size} in line."
end

def now_serving(current_line)
  if current_line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_line.shift}."
  end
end
