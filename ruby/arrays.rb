

    @avengers = Array.new

    @avengers.push('Iron Man') # 0
    @avengers.push('SpiderMan') # 1
    @avengers.push('Hulk') # 2

    def imprime_hulk
        @avengers.each do |a|
            puts a if a == 'Hulk'
        end
    end


    imprime_hulk
        
