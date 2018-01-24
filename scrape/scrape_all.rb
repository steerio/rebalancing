#!/usr/bin/env ruby

require 'json'
require 'csv'
require 'set'
require 'fileutils'

ROOT = File.dirname $0

BASE = 'usd'
COUNT = 100
slugs = JSON.parse File.read('slugs.json')

plan = Set.new
CSV.parse(File.read("#{ROOT}/../work/tops.csv")).each do |d,*coins|
  plan += coins[0,COUNT]
end

DATA = "#{ROOT}/data"
FileUtils.mkdir_p DATA

plan.each do |code|
  STDERR.puts code if !slugs[code]
  fn = "#{DATA}/#{code.downcase}_#{BASE}.csv"
  next if File.exist?(fn)
  system "python scrape.py #{slugs[code]} 2017-01-01 2018-01-20 >> #{fn}"
  sleep 0.2
end
