class BoundingArea
  attr_accessor :boundingboxes

  def initialize(boundingboxes)
    @boundingboxes = boundingboxes
  end

  def contains_point?(x, y)
    if boundingboxes.empty?
      return false
    else
      boundingboxes.any? {|box| box.contains_point?(x, y)}
      # boundingboxes.each do |box|
      #   if box.contains_point?(x, y)
      #   # if x <= box.right && box.left <= x && y <= box.top && box.bottom <= y
      #     return true
      #   else
      #     return false
      #   end
      # end
    end
  end
end

#Pseudocode: I know that the bounding area should take as an argument
# an array of boundng boxes which make up the total bounding area.
# I can then iterate through the arrray of bounding boxes
# to find whether a give point is in a bounding box,
# and thus in the bounding area.
