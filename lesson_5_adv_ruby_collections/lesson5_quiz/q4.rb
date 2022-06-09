# select the correct option to change the string 'Apple Juice' to 'Orange Juice'.

todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  }
]

p todo_lists[0][:todos]
p todo_lists[0][:todos][2]

todo_lists[0][:todos][2][:name] = "Orange Juice"
p todo_lists[0][:todos][2][:name]