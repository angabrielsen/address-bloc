class AddressBook
    
    require_relative "entry.rb"
    
   attr_accessor :entries
   
   def initialize
       @entries = []
   end
   
   def add_entry(name, phone, email)
 # #9
     index = 0
     @entries.each do |entry|
 # #10
       if name < entry.name
         break
       end
       index += 1
     end
 # #11
     @entries.insert(index, Entry.new(name, phone, email))
   end
end