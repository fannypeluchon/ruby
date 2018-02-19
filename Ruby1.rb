somme = 0

for num in 1..999
    if num % 3 == 0 ||  num % 5 == 0
        somme += num
     end
end

puts somme