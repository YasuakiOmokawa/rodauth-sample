"ruby".send(:sub,/./,"R") #=> "Ruby"
def detect_method
  return :sub,/./,"R"
end
"ruby".send(*detect_method) #=> "Ruby"
