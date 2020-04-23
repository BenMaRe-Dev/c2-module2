# frozen_string_literal: true

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

class Contact
  attr_accessor :name, :phone

  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  def to_s
    "#{@nane} -> #{@phone}"
  end
end

class ContactBook
  def initialize
    @contacts = []
  end

  def add(name, phone = nil)
    contact = Contact.new(name, phone)
    @contacts.push(contact)
  end

  def find(name)
    @contacts.detect { |contact| contact.name.to_sym == name.to_sym }
  end

  def delete(contact)
    index = @contacts.index(contact)
    @contacts.delete_at(index)
  end

  def display
    @contacts.map do |contact|
      "#{contact.name} -> #{contact.phone}"
    end
  end
end

contacts = {
  Mario: 999_555_777,
  Marta: 999_444_333,
  Daniel: 999_222_888,
  Alexander: 999_444_222,
  Noelia: 999_666_444,
  Igor: 999_111_333,
  Carolina: 999_000_888
}

# ContactBook instance
contact_book = ContactBook.new

# Seed the contactbook insta
contacts.each do |k, v|
  contact_book.add(k, v)
end

puts 'What would you like to do?'
puts "-- Type 'add' to add a new contact"
puts "-- Type 'update' to upadte an existing contact"
puts "-- Type 'display' to display all your contacts"
puts "-- Type 'delete' to delete a contact"
puts 'Please enter a command: '
command = gets.chomp

case command
when 'add'
  puts 'Please enter a name: '
  name = gets.chomp
  found_contact = contact_book.find(name)
  if found_contact
    puts "The contact's name alredy exist! It's phone number is #{contacts[new_name.to_sym]}"
  else
    puts 'Please enter a phone number: '
    phone = gets.chomp
    contact_book.add(name, phone)
    puts contact_book.display
  end
when 'update'
  puts 'Please enter the name of the contact to be updated: '
  name = gets.chomp
  found_contact = contact_book.find(name)
  if found_contact
    puts 'Please enter the new phone number: '
    updated_phone = gets.chomp
    found_contact.phone = updated_phone
    puts 'Updated!'
  else
    puts "Name doesn't exist!"
  end
when 'display'
  puts contact_book.display
when 'delete'
  puts 'Please enter the name of the contact to be deleted: '
  name = gets.chomp
  found_contact = contact_book.find(name)
  if found_contact
    contact_book.delete(found_contact)
    puts 'Deleted!'
    puts contact_book.display
  else
    puts "Name doesn't exist!"
  end
else
  puts 'Please enter a valid command!'
end
