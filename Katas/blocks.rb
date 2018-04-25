#
# Create two methods that will process a block when it is given. These should be named 'by_using_call' and 'by_using_yield'.
#
# The methods will take a parameter representing the header and footer (i.e. strings) and will wrap these values in an <h1> and <h2>
# tag respectively. The elements processed by the block will be wrapped in a <ul> tag with the individual elements wrapped in <li> tags
#
# One method should render all 4 list items and the other should only render 2 list items
def by_using_call(string1, string2, &block)
  result = ''
  block_result = ''
  result += wrap_in_tag('h1', string1)
  block_result = block.call 4
  result += wrap_in_tag('ul', block_result)
  result += wrap_in_tag('h2', string2)
end

def by_using_yield(string1, string2)
  result = ''
  yield_result = ''
  result += wrap_in_tag('h1', string1)
  yield_result = yield 2
  result += wrap_in_tag('ul', yield_result)
  result += wrap_in_tag('h2', string2)
end

def wrap_in_tag(tag, string)
  "<#{tag}>#{string}<\/#{tag}>"
end