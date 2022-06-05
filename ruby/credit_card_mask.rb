
# Usually when you buy something, you're asked whether your credit card number,
# phone number or answer to your most secret question is still correct.
# However, since someone could look over your shoulder,
# you don't want that shown on your screen.
# Instead, we mask it. Your task is to write a function maskify,
# which changes all but the last four characters into '#'.

def maskify(cc)
  for i in 0 .. cc.length - 1
    if i < cc.length - 4
      cc[i] = "\#"    # ==> WAY TO REASSIGN A VALUE IN AN ARRAY
    end
  end
  return cc
end

puts maskify("4556364607935616")
puts maskify("458")
