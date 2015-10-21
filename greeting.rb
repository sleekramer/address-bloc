def greeting
  ARGV[1..-1].each {|name| puts "#{ARGV[0]} #{name}" }
end

greeting
