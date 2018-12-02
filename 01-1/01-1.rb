#!/usr/bin/env ruby

frequency = 0
$stdin.each_line do |line|
  frequency += line.to_i
end

puts frequency
