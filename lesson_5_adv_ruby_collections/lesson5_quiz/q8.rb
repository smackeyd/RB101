order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]

customer_orders = {}

order_data.each do |hash|
  if customer_orders.key?(hash[:customer_id]) # if the key already exists 
    customer_orders[hash[:customer_id]][:orders] << { # appends new order hash into orders array
      order_fulfilled: hash[:order_fulfilled],
      order_value: hash[:order_value]
    }
  else
    customer_orders[hash[:customer_id]] = {
      customer_id: hash[:customer_id],
      customer_name: hash[:customer_name],
      orders: [
        {
          order_fulfilled: hash[:order_fulfilled],
          order_value: hash[:order_value]
        }
      ]
    }
  end
end

p customer_orders
customer_orders = customer_orders.values
p customer_orders