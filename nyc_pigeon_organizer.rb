require 'pry'

def nyc_pigeon_organizer(data)
  ans = Hash.new
  
  data_1d = data.flatten
  data_1d.each {|x|
    if x.is_a?(Symbol)
      next
    elsif x.is_a?(Hash)
      x.each {|desc,array|
        array.each {|name|
          if !ans[name]
            ans[name] = {}
          end 
          binding.pry
          if !ans[name][x]
            ans[name][x] = []
          elsif !ans[name][x].include?(desc.to_s)
            ans[name][x] << desc.to_s
          end
        }
      }
    end
  }
  ans
end