class AppDelegate < PM::Delegate
  status_bar true, animation: :none

  def on_load(app, options)
    open_menu HomeScreen.new(nav_bar: true), left: MenuScreen, to_show: :pan_nav_bar, to_hide: :pan_nav_bar
  end

  def open_slide_menu(middle_screen, sides={})
    middle = middle_screen && middle_screen.navigationController || middle_screen
    right = sides[:right] && sides[:right].navigationController || sides[:right]
    left = sides[:left] && sides[:left].navigationController || sides[:left]
    open @mm_drawer_controller = MMDrawerController.alloc.initWithCenterViewController(middle, leftDrawerViewController: left, rightDrawerViewController: right)
  end

  # access with app_delegate.open_drawer(:left, animated: true) do |finished| ... end
  def open_drawer(side, args={}, &callback)
    args[:animated] ||= false
    # I think `side` has to be turned into MMDrawerSideLeft, MMDrawerSideRight
    side = MMDrawerSideLeft if side == :left
    side = MMDrawerSideRight if side == :right
    @mm_drawer_controller.openDrawerSide(side, animated: args[:animated], completion: callback)
  end

  def close_drawer(args={}, &callback)
    args[:animated] ||= false
    @mm_drawer_controller.closeDrawerAnimated(args[:animated], completion: callback)
  end
end
