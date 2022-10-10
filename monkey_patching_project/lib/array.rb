# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self == [] then return nil end
        min = self.min
        max = self.max
        range = max - min
    end

    def average
        if self == [] then return nil end
        1.0 * self.sum / self.length
    end

    def median
        if self == [] then return nil end
        temp = self.sort
        length = self.length
        if length % 2 == 0
            (temp[length/2-1] + temp[length/2]) / 2.0
        else #return middle ele
            temp[length/2]
        end
    end

    def counts
        # return a hash with count of each element of array
        hash = Hash.new {|h,k| h[k] = 0}
        self.each do |ele|
            hash[ele] += 1
        end
        hash
    end

    def my_count(arg)
        #return number of times included ele included in self
        count = 0

        self.each do |ele|
            if ele == arg
                count +=1
            end
        end

        count
    end

    def my_index(arg)
        index = Array.new

        self.each_with_index do |ele, idx|
            if ele == arg
                index << idx
            end
        end

        index[0]
    end

    def my_uniq
        uniq = Array.new

        self.each do |ele|
            if !uniq.include?(ele)
                uniq << ele
            end
        end

        uniq
    end

    def my_transpose
        output = Array.new(self.length) {Array.new(self.length)}

        self.each_with_index do |arr, row|
            arr.each_with_index do |subarr, col|
                output[col][row] = self[row][col]
            end
        end

        output
    end

end
