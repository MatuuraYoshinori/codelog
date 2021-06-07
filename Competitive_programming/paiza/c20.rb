# 仕入れ量　仕入れ/生販売量%　生/惣菜販売料%
line = gets.chomp.split

p_amount = line[0]
raw_sales = line[1]
side_sales = line[2]
raw_sales.to_f/100
p_amount.to_f

 day_1 = p_amount.to_f - (p_amount.to_f*(raw_sales.to_f/100))
 day_2 = day_1 - day_1.to_f*(side_sales.to_f/100)

puts day_2.floor(5)