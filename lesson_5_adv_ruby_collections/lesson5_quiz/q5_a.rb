todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]

p todo_lists[1]
p todo_lists[1][:todos]
p todo_lists[1][:todos][0]
p todo_lists[1][:todos][1]

todo_lists[1][:todos][0][:completed] = true 
todo_lists[1][:todos][1][:completed] = true 

p todo_lists
