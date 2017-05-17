@arr = ["tom"]

def show_contacts
  puts "contacts"
  # @arr.each do |person|
  # end
  @arr.each { |person| puts person }
  print_menu
end

def create_contacts
  puts "create contact"
  person = gets
  @arr << person
  show_contacts
end

def delete_contact
  puts "who to delete?"
  @arr.each { |person| puts person }
  user_delete = gets.chomp
  @arr.delete(user_delete)
  print_menu
end

def edit_contact
  puts "edit which contact?"
  @arr.each { |person|
    puts person

    edit = gets.chomp
    if edit == person
      puts "what do you want the name to be"
      user_edit = gets.chomp
      @arr.delete(person)
      @arr << user_edit
    end
  }
  print_menu
end


def print_menu
    puts "----Contact List Menu----
    1) All Contacts
    2) Creates Contact
    3) Delete A Contact
    4) Edit A Contact
    5) Quit"
    choice = gets.chomp.to_i
  case choice
    when 1
      show_contacts
    when 2
      create_contacts
    when 3
      delete_contact
    when 4
      edit_contact
    when 5
      exit
    else
      puts 'Error Wrong Numer'
      print_menu
  end
end

print_menu
