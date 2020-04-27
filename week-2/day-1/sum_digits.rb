def digital_root(n)
  n = n.digits.sum while n.digits.length > 1
  n
end