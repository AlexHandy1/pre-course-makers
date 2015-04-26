def solution(pairs)
  
  # string = ''

  # pairs.each do |k, v|
  # 	string += "#{k} = #{v}" + ","
  # end

  # p string
  pairs.map{|k,v| "#{k} = #{v}"}.join(',')
end

solution({a: 1, b: '2'})

# should return "a = 1,b = 2"