#!/usr/bin/env ruby

frequency = 0
previous_frequencies = []

loop do
  $stdin.each_line do |line|
    if previous_frequencies.include?(frequency)
      puts
      puts frequency
      exit 0
    end
    previous_frequencies << frequency
    frequency += line.to_i
  end
  $stdout.print '.'
  $stdout.flush
  $stdin.rewind
end

exit 1
