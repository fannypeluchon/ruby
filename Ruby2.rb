message = ARGV[0]
crypte = ''

def number_or_nil(string)
  Integer(string || '')
rescue ArgumentError
  nil
end

cle = number_or_nil(ARGV[1])

if cle == nil || cle > 26
    puts "La clé doit être comprise entre 0 et 26"
    exit
end

message.each_byte do |lettre|
    if lettre >= 65 && lettre <= 90 # Majuscule
        for num in 1..cle
            lettre += 1

            if lettre == 91
                lettre = 65
            end
        end
    elsif lettre >= 97 && lettre <= 122 # Minuscule
        for num in 1..cle
            lettre += 1

            if lettre == 123
                lettre = 97
            end
        end
    end

    crypte += lettre.chr
end

puts message
puts crypte