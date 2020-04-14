def calculate_pressure(chemical_amount, temperature, volume)
  
 p = chemical_amount * 8.314 * temperature / volume 

 puts p
end

calculate_pressure(5, 500, 2) # Returns 10392.5