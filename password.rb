#!/usr/bin/env ruby
require 'optparse'

alpha = *('a'..'z'), *('A'..'Z')
num   = *(0..9)
sym   = '!@#$%^&*()_-+=/,.'.split ''
keyspace = []

OptionParser.new do |opts|
  opts.banner = 'Usage: password.rb [options] [length]'

  opts.on('-a', '--enable-alpha', 'Add alphabet (lower and uppercase).') do
    keyspace += alpha
  end

  opts.on('-n', '--enable-num', 'Add numbers.') do
    keyspace += num 
  end

  opts.on('-s', '--enable-sym', 'Add symbols (!@#$%^&*()_-+=/,.).') do
    keyspace += sym
  end
end.parse!

length = ARGV[0].to_i
length.times { print keyspace[rand(keyspace.length)] }
puts
