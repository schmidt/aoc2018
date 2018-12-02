#!/usr/bin/env ruby

ids = $stdin.each_line.map(&:strip).map(&:chars)

ids.size.times do
  a = ids.pop

  ids.each do |b|
    same = 0
    diff = 0
    letters = []

    a.size.times do |i|
      if a[i] == b[i]
        same += 1
        letters << a[i]
      else
        diff += 1
      end
    end

    if diff == 1
      puts
      puts letters.join
      exit 0
    end
  end

  ids.unshift(a)
  $stdout.print '.'
  $stdout.flush
end

puts
exit 1
