#! /home/kanbara/.rbenv/shims/ruby

a = []
p = []

for b in 2..100 do
  a.push(b)
end

while a.length do
  p a.length
  n =a.shift()
  p.push(n)

  a.each do |m|
    if m % n == 0
      a.delete(m)
    end
  end

  if n * n > a.last
    p = p + a
    break
  end
end

p p
