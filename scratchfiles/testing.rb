def addUpTo(n)
  n * (n + 1) / 2
end

t1 = Time.now.utc
p addUpTo(100000000)
t2 = Time.now.utc
p "Time elapsed #{t2-t1}"