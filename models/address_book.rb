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

  def remove_entry(name, phone_number, email)
    index = 0
    @entries.each do |entry|
      if name == entry.name && phone_number == entry.phone_number && email = entry.phone_number
        break  # break when the entry index is reached
      end
      index += 1  # otherwise increment the index counter
    end

    @entries.delete_at(index)  # delete the entry
  end
end
