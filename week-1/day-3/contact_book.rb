# Contact book
# Build a CLI to handle a contact book.
#
# The CLI should allow to:
#
# Add contacts with a phone number
# Remove contacts by name
# Display all the contacts
# Update the phone number of a contact.
# The API (how the program works) should be similar 
# to the one from the guided exercise from codecademy.
#
# Avoid copying code from the Codecademy exercise, 
# prefer asking help to your peers/instructors over it.
#
# If you find yourself in the position that you must 
# copy code; avoid copying and pasting it and try to 
# understand what is happening and write it in your "own" code.
# 
# $ ruby contacts.rb
# What would you like to do?
# -- Type 'add' to add a contact.
# -- Type 'update' to update a contact.
# -- Type 'display' to display all contacts.
# -- Type 'delete' to delete a contact.

puts "What would you like to do?"
puts "-- Type 'add' to add a new contact"
puts "-- Type 'update' to upadte an existing contact"
puts "-- Type 'display' to display all your contacts"
puts "-- Type 'delete' to delete a contact"

contacts = {
  Mario: 999555777,
  Marta: 999444333,
  Daniel: 999222888,
  Alexander: 999444222,
  Noelia: 999666444,
  Igor: 999111333,
  Carolina: 999000888
}
puts "please enter a command: "
command = gets.chomp  

case command
  when "add"
    puts "Please enter a name: "
    new_name = gets.chomp
    if contacts[new_name.to_sym].nil?
      puts "Please enter a phone number: "
      new_phone = gets.chomp
      contacts[new_name.to_sym] = new_phone
      puts "Added!"
      puts " "
      puts "#{new_name} -> #{new_phone}"
    else
      puts "The contact's name alredy exist! It's phone number is #{contacts[new_name.to_sym]}"
    end
  when "update"
    puts "Please enter the name of the contact to be updated: "
    name = gets.chomp
    if contacts[name.to_sym].nil? 
      puts "Name doesn't exist!"
    else
      puts "Please enter the new phone number: "
      updated_phone = gets.chomp
      contacts[name.to_sym] = updated_phone
      puts "Updated!"
      puts " "
      puts "#{name} -> #{updated_phone}"
    end
  when "display"
    contacts.each { |name, email| puts "#{name} -> #{email}" }
  when "delete"
    puts "Please enter the name of the contact to be deleted: "
    delete = gets.chomp
    if contacts[delete.to_sym].nil? 
      puts "Name doesn't exist!"
    else
      contacts.delete(delete.to_sym)
      puts "Deleted!"
      puts " "
      contacts.each { |name, phone_number| puts "#{name} -> #{phone_number}" }
    end
  else
    puts "Please enter a valid command!"
end


