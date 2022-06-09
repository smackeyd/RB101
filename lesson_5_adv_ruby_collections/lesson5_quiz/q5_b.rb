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
p todo_lists[1].keys
p todo_lists[1][:todos]

todo_lists[1].each do |list_key, list_value| 
  if list_key == :todos
    list_value.each { |todo| todo[:completed] = true }
  end
end

# p todo_lists