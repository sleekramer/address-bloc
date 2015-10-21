require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    # add entries in lexicographical order
    index = 0
    @entries.each do |entry|
      if name < entry.name  # break if the next name is greater
        break
      end
      index += 1  # otherwise increment the index counter
    end
    # insert the new entry into @entries in the proper place
    @entries.insert(index, Entry.new(name, phone_number, email))
  end

end
