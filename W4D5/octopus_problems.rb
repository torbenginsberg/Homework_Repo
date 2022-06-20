require "byebug"

def sluggish_octopus(arr)
    curr_count = 0
    longest = ""
    arr.each do |fish|
        count = 0
        fish.each_char { |char| count += 1 }
        if count > curr_count
            longest = fish
            curr_count = count
        end
    end
    longest
end

class Array
    def dominant_octopus
        prc ||= Proc.new { |x, y| x.length <=> y.length }

        return self if count < 2

        middle = count / 2
        l = self.take(middle)
        r = self.drop(middle)

        sorted_left = l.dominant_octopus(&prc)
        sorted_right = r.dominant_octopus(&prc)

        sorted = Array.merge(sorted_left, sorted_right, &prc)
    end

    private
    def self.merge(left, right, &prc)
        merged_arr = []

        until left.empty? || right.empty?
            if prc.call(left.first, right.first) == -1
            merged_arr << left.shift
            else
            merged_arr << right.shift
            end
        end
        merged_arr + left + right
    end
end



def clever_octopus

end


fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p fishes.dominant_octopus