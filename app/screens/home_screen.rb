class HomeScreen < PM::Screen
  include HomeStyles

  title "Dashboard"

  def on_load
    menu_label = add UILabel.new, nav_bar_label('Menu')
    help_label = add UILabel.new, nav_bar_label('Help')
    set_nav_bar_button :left, custom_view: menu_label, action: :show_menu
    set_nav_bar_button :right, custom_view: help_label
    menu_label.setUserInteractionEnabled(true)
    help_label.setUserInteractionEnabled(true)
    menu_label.addGestureRecognizer(UITapGestureRecognizer.alloc.initWithTarget(self, action: :show_menu))
    help_label.addGestureRecognizer(UITapGestureRecognizer.alloc.initWithTarget(self, action: :show_help))
    set_attributes self.view, :main_view_style
    add_titles

    add UILabel.new, label_style
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
    add Tile.new, { frame: [[  20,  120 ], [ 340, 300 ]] }
  end

end