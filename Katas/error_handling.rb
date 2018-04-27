def generate_exception(proc_to_execute, arbitrary_value = 7)
  result = "Use of an 'else' block is seldom used in rescue operations"

  begin
    proc_to_execute.call(arbitrary_value)

  rescue RegexpError => re
    result = custom_message('That is not any kind of expression I have ever seen', re.message)
  rescue ZeroDivisionError => zde
    result = custom_message('Math is hard', zde.message)
  rescue NoMethodError => nme
    result = custom_message('Hard to call what does not exist', nme.message)
  rescue => se
    result = custom_message('Just a regular old error', se.message)
  else
    "The execution of the proc occurred without exception"
  end
  result
end

def custom_message(custom_message, exception_message)
  "#{custom_message} \nThe message given from the exception was:\n\t#{exception_message}"
end