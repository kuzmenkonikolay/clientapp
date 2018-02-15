class Tile < UIView
  include PM::Styling

  def self.new
    tile = alloc.initWithFrame(CGRectZero)
    tile
  end

  def initWithFrame(frame)
    super
    set_attributes self, {
        background_color: hex_color("F6F6F6"),
        layer: {
            shadow_radius: 4.0,
            shadow_color: UIColor.blackColor.CGColor
        }
    }
    self
  end
end