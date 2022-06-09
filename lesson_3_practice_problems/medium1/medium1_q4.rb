def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

array = [1, 2, 3]

new_elements = 56

rolling_buffer1(array, 4, new_elements) # modifies/mutates array
# rolling_buffer2(array, 5, new_elements) # does not modify array

p array