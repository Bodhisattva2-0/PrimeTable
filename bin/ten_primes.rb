#!/usr/bin/env ruby
require_relative "../prime_table.rb"
require_relative "../lib/sieve_of_eratosthenes.rb"

prime_table = PrimeTable.new(10, SieveOfEratosthenes)
puts prime_table.display
