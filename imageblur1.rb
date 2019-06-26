class Image
  
    def initialize(image_array)
        @array = []
        @array << Array.new(image_array[0][0..3])
        @array << Array.new(image_array[1][0..3])
        @array << Array.new(image_array[2][0..3])
        @array << Array.new(image_array[3][0..3])

    end 

    def output_image
        @array.each do |list|
          list.num_display
      end
    end
end

class Array
    attr_accessor :num1, :num2, :num3, :num4

    def initialize(array)
        @num1 = array[0]
        @num2 = array[1]
        @num3 = array[2]
        @num4 = array[3]
    end

    def num_display
        puts "#{num1}#{num2}#{num3}#{num4}"
    end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 1, 1, 0]
])

image.output_image

