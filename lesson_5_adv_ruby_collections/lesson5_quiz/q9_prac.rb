customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]

cust = customer_orders[0]
p cust
# p customer_orders[0][:customer_id]

  cust_arr = [
    [:customer_id, cust[:customer_id]],
    [:customer_name, cust[:customer_name]],
    # [:total_order_value]
  ]
  
p cust_arr.to_h