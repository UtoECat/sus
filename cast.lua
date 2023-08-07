local f = io.open('ascii.txt', 'r')
local s = f:read('a')
f:close()

s = s:gsub('%s*\n', '\n')

local out = ""
local cc = s:sub(1, 1)
local cn = 1

for i = 2, #s do
	local c = s:sub(i, i)
	if c == cc then
		cn = cn + 1
	else
		out = out .. string.char(cn) .. cc
		cn = 1
		cc = c
	end
end
out = out .. string.char(cn) .. cc

print(string.format('%q', out))

for i = 1, #out, 2 do
	cn = string.byte(string.sub(out, i, i))
	cc = string.sub(out, i+1, i+1)
	while cn > 0 do
		io.write(cc)
		cn = cn - 1
	end
end

f = io.open("data.bin", 'wb')
assert(f)
f:write(out)
f:close()

--[[
io.write('-- DUMP BEGIN--\n\t.byte ');
for i = 1, #out do
	io.write(tostring(string.byte(string.sub(out, i, i))))
	if i % 12 == 11 then
		io.write('\n\t.byte ');
	else
		io.write(', ')
	end
end
print("\n-- DUMP END --")]]
