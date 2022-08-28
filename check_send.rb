# frozen_string_literal: true

'ruby'.send(:sub, /./, 'R') #=> "Ruby"
def detect_method
  [:sub, /./, 'R']
end
'ruby'.send(*detect_method) #=> "Ruby"
