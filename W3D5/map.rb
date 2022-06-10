def Map
    def initialize
        @map = []
    end

    def set(key, value)
        has_key? = false
        @map.each_with_index do |pair, idx|
            if pair[0] == key
                has_key? = true
                pair_idx = idx
            end
        end

        if has_key?
            @map[pair_idx][1] = value
        else
            @map.push([key, value])
        end
    end

    def get(key)
        @map.each do |pair|
            return pair[1] if pair[0] == key
        end
        false
    end

    def delete(key)
        @map.each_with_index do |pair, idx|
            @map.delete_at(idx) if pair[0] = key
            return true
        end
        false
    end

    def show
        
    end
end