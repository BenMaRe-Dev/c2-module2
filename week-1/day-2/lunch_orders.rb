# frozen_string_literal: true

people_orders = {
  'julio' => 'pizza',
  'diego' => 'saltado',
  'andres' => 'hamburguer',
  'ximena' => 'ceviche',
  'felipe' => 'pizza',
  'jon' => 'saltado',
  'snow' => 'ceviche',
  'pepe' => 'fried chicken',
  'queen of dragons' => 'ice cream',
  'jose' => 'hamburguer',
  'jafeth' => 'fried chicken'
}

def process_orders(people_orders)
  hash = {}
  values = people_orders.values.uniq
  values.each do |food|
    hash[food] = people_orders.select { |_k, v| v == food }.length
  end
  hash
end

puts process_orders(people_orders)
