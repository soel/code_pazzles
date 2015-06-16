#! /home/kanbara/.rbenv/shims/ruby

@maparr = [5,5,4,2,1,1,1,2,2,3,
		      5,4,3,2,1,1,2,2,3,4,
		      5,4,2,1,1,2,2,4,5,5,
		      4,4,2,1,2,2,3,3,4,5,
		      4,3,1,1,4,3,3,3,4,5,
		      3,1,1,5,4,3,2,3,4,5,
		      2,1,3,4,3,3,2,2,3,4,
		      1,1,3,4,3,2,1,1,2,3,
		      2,1,1,3,4,2,2,3,4,4,
		      3,2,1,1,3,3,3,3,4,5]

#p maparr[0 + 1 * 10]

@h = 10
@w = 10
@x1 = 4
@y1 = 0
@x2 = 5
@y2 = 9

@arr = []
i = 0
while i < @w * @h do
	@arr[i] = 10000 #予想される計算結果より大きい値にしておく
	i += 1
end

def gencstmap(x, y, cst)
	cst += @maparr[x + y * @w]
	if cst >= @arr[x + y * @w]
		return
	end
	@arr[x + y * @h] = cst

	if x > 0
		gencstmap(x-1 , y, cst)
	end
	if y > 0
		gencstmap(x, y-1, cst)
	end
	if x < @w - 1
		gencstmap(x+1, y , cst)
	end
	if y < @h - 1
		gencstmap(x, y+1, cst)
	end
end

gencstmap(@x2, @y2, - @maparr[@x2 + @y2 * @h])

y = 0
while y < @h do
	s = ""
	x = 0
	while x < @w do
		c = @arr[x + y * @w]
		s += c < 10 ? " " + c.to_s : c.to_s
		s += ","
		x += 1
	end

	p s
	y += 1
end
