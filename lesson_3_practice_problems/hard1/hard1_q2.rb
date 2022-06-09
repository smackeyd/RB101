greetings = { a: 'hi' }

informal_greeting = greetings[:a]

# informal_greeting = greetings[:a].clone # option to reference a new object with same value

# informal_greeting << ' there' # modifies object

informal_greeting += ' there' # does not modify object


p informal_greeting  
p greetings