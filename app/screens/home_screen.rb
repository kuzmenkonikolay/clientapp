class HomeScreen < PM::Screen
  include HomeStyles

  title "Dashboard"

  def on_load
    set_nav_bar_button :left, title: "Menu", action: :show_menu
    set_nav_bar_button :right, title: "Help", action: :show_help
    set_attributes self.view, :main_view_style
    add_titles

    add UILabel.new, {
        text: "August",
        text_color: hex_color("8F8F8D"),
        background_color: UIColor.clearColor,
        shadow_color: UIColor.blackColor,
        text_alignment: UITextAlignmentCenter,
        font: UIFont.systemFontOfSize(15.0),
        resize: [ :left, :right, :bottom ], # ProMotion sugar here
        frame: CGRectMake(10, 0, 300, 35)
    }
  end

  def show_help
    open HelpScreen
  end

  def show_menu
    app_delegate.menu.toggleDrawerSide MMDrawerSideLeft, animated: true, completion: ->(c) { true }
  end

  def alert msg
    alert = UIAlertView.new
    alert.message = msg
    alert.show
    true
  end

  def add_titles
    add Tile.new, { frame: [[  20,  20 ], [ 260, 300 ]] }
  end

end