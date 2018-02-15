module HomeStyles

  def main_view_style
    {
        background_color: hex_color("DBDBDB")
    }
  end

  def label_style
    {
        text: "Client Dashboard",
        text_color: hex_color("FFFFFF"),
        background_color: UIColor.clearColor,
        shadow_color: UIColor.blackColor,
        text_alignment: UITextAlignmentCenter,
        font: UIFont.systemFontOfSize(15.0),
        resize: [ :left, :right, :bottom ], # ProMotion sugar here
        frame: CGRectMake(10, 0, 300, 35)
    }
  end
end