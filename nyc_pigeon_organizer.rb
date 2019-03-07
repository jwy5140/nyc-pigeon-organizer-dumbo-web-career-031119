require 'pry'

def nyc_pigeon_organizer(data)
  ans = Hash.new
  
  data_1d = data.flatten
  data_1d.each_with_index {|x,y|
    if x.is_a?(Symbol)
      next
    elsif x.is_a?(Hash)
      x.each {|desc,array|
        array.each {|name|
          if !ans[name]
            ans[name] = {}
          end 
          if !ans[name][ans[y-1]]
            ans[name][ans[y-1]] = []
          elsif !ans[name][ans[y-1]].include?(desc.to_s)
            ans[name][ans[y-1]] << desc.to_s
          end
        }
      }
    end
  }
  ans
end