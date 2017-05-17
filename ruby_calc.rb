@user_first_number = 0
@user_second_number = 0
@user_operator = ""

def greeting
  puts "Enter name"
  name = gets
  puts "Nice to meet you #{name}, I can do simple, adding, subtracting,
multipling and dividing."
  first_number
end

def first_number
  puts "Enter First Number"
  @user_first_number = gets.strip.to_i
  second_number
end

def second_number
  puts "Enter Second Number"
  @user_second_number = gets.strip.to_i
  operater_input
end



def operater_input
  puts "Please select your operation"
  @user_operator = gets.strip
  calculate_answer
end


def calculate_answer
  if @user_operator == "+"
    puts @user_first_number + @user_second_number
  elsif @user_operator == "-"
    puts @user_first_number - @second_number
  elsif @user_operator == "*"
    puts @user_first_number * @user_second_number
  elsif @user_operator == "/"
    puts @user_first_number / @user_second_number
  else
    puts "Error, Try Again"
    greeting
  end
end

# call your greeting, then call 1st number 2nd and operater
greeting
calculate_answer
