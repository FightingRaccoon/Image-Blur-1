class Image
  
    def initialize(image_array)
        @image_array = image_array
        @location = []
    end 

    def output_image
        @image_array.each do |list|
          puts list.join(" ")
      end
    end

    def locate
      # find the all the "1"
      # find the location of the "1" 
      @image_array.each_with_index do |prim_arr, vertical|
        prim_arr.each_with_index do |num, horz|
          if num == 1
            @location << [vertical, horz]
          end
        end
      end
    end

    def blur(distance)
        (1..distance).each do
          @location.each do |found_vertical, found_horz|
              @image_array[found_vertical - 1][found_horz] = 1 unless found_vertical < 1
              @image_array[found_vertical + 1][found_horz] = 1 unless found_vertical >= @image_array.length - 1
              @image_array[found_vertical][found_horz - 1] = 1 unless found_horz < 1
              @image_array[found_vertical][found_horz + 1] = 1 unless found_horz >= @image_array.length - 1
        
          end
        self.locate
        end 
    end 
end


image = Image.new([
  [0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0]
])
image.output_image
puts
image.locate
image.blur(2)

image.output_image


#Notes (git push github master) 