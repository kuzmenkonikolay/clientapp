module HomeStyles

  def main_view_style
    {
        background_color: hex_color("eeeeee")
    }
  end

  def label_style
    {
        text: "DASHBOARD",
        text_color: hex_color("B82228"),
        background_color: UIColor.clearColor,
        shadow_color: UIColor.clearColor,
        text_alignment: UITextAlignmentCenter,
        font: UIFont.systemFontOfSize(20.0),
        frame: CGRectMake(20, 60, 340, 60)
    }
  end

  def nav_bar_label text
    {
        text: text,
        text_color: hex_color("FFFFFF"),
        text_alignment: UITextAlignmentCenter,
        font: UIFont.systemFontOfSize(18.0),
    }
  end
end