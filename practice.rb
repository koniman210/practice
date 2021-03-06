require"./rrr"

menu1 = Menu.new(name:"沖縄旅行",price:10000)
menu2 = Menu.new(name:"北海道旅行",price:20000)
menu3 = Menu.new(name:"九州旅行",price:15000)


menus=[menu1,menu2,menu3]

menus.each.with_index(1) do |menu,i|
  puts "#{i}.#{menu.info}"
end

puts "プランを選択してください"
order = 0
loop do
order= gets.chomp.to_i
break if (1..3).include?(order)

  puts "1~3番からお選びください"
end

selected_menu = menus[order -1]
puts "#{selected_menu.name}ですね、何人でいきますか？"

count = gets.chomp.to_i
if count< 5
  puts "合計料金:¥ #{selected_menu.get_total_price(count)}"
else
  puts "5人以上なので10％引きになります"
  puts "合計料金:¥ #{selected_menu.get_total_price(count)}"

end