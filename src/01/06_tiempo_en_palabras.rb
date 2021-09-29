
def tiempo_en_palabras(tiempo)
    if tiempo.hour==23 
        hora=0
      else
        hora=tiempo.hour+1  
    end    
    case tiempo.min
         when 0..10 
              "Es la #{tiempo.hour} en punto"
         when 11..20 
              "Es la #{tiempo.hour} y cuarto"
         when 21..34 
              "Es la #{tiempo.hour} y media"
         when 35..44
              "Son las #{hora} menos veinticinco"
         when 45..55
              "Son las #{hora} menos cuarto"
         when 56..59
              "Casi es la #{hora}"
         else 
              "otra"
    end
end     

puts tiempo_en_palabras(Time.new(2021, 10, 21, 10, 43))
#=> "Son las 10 en punto"
puts tiempo_en_palabras(Time.new(2021, 10, 21, 9, 33))
# => "Son las 9 y media"
puts tiempo_en_palabras(Time.new(2021, 10, 21, 8, 45))
# => "Son las 9 menos cuarto"
puts tiempo_en_palabras(Time.new(2021, 10, 21, 6, 58))
# => "Casi son las 7"
puts tiempo_en_palabras(Time.new(2021, 10, 21, 0, 58))
# => "Casi es las 1"