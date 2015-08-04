#! /home/kanbara/.rbenv/shims/ruby

n = 0.0
line = ""
while str = STDIN.gets
  n += 1
  if Random.rand(1.0) <= 1/n
    line = str
  end
end

p line.chomp
