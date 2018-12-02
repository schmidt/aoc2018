#!/usr/bin/env ruby

pairs = 0
triples = 0

$stdin.each_line do |line|
  counts = line.chomp.each_char.group_by { |l| l }.map { |l, o| o.size }

  pairs += 1 if counts.include? 2
  triples += 1 if counts.include? 3
end

puts pairs * triples
