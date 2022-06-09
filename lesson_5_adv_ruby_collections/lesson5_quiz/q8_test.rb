# order_data =  [{customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65}]
customer_orders = {}

# customer_orders[hash[:customer_id][:orders]] << [hash[:order_fulfilled], hash[:order_value]]

hash = {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49}

p hash[:customer_id]

p customer_orders
customer_orders = customer_orders.values
p customer_orders

# new_hash =  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00}

# if new_hash.key?(hash[:customer_id])
#   customer_orders[row[:customer_id]][:orders] << { # appends new order hash into orders array
#       order_fulfilled: row[:order_fulfilled],
#       order_value: row[:order_value]
#     }
# end

# p new_hash
