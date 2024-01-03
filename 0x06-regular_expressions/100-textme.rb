#!/usr/bin/env ruby

sender = ARGV[0][/from:\s*(((\+?[0-9]+)|([\w]+)))/, 1]
receiver = ARGV[0][/to:\s*(((\+?[0-9]+)|([\w])))/, 1]
flag = ARGV[0][/flags:\s*([-0-9:]*)/, 1]
puts "#{sender},#{receiver},#{flag}"
