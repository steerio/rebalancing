#!/usr/bin/env ruby -n

BEGIN { require 'csv'; require 'date' }

a, *b = CSV.parse_line($_)
next if a == 'Date'
puts CSV.generate_line([Date.parse(a), *b])
