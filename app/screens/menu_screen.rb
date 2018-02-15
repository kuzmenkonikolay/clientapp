class MenuScreen < PM::TableScreen
  title "Menu"

  def on_load
    self.view.backgroundColor = UIColor.whiteColor
  end

  def table_data
    [{
         title: 'TheKatAgency',
         title_view_height: 50,
         cells: [
             {
                 title: "Dashboard",
                 action: :dashboard,
                 height: 40,
                 properties: { # (Edge change, use `style:` in ProMotion 2.0.x)
                               masks_to_bounds: true,
                               background_color: UIColor.whiteColor, # Creates a UIView for the backgroundView
                 },
                 image: {
                     image: "images/icons/dashboard.png", # PM will do `UIImage.imageNamed("something")` for you
                     # radius: 15 # radius is optional
                 },
             },
             {
                 title: "Inquiries",
                 height: 40,
                 properties: { # (Edge change, use `style:` in ProMotion 2.0.x)
                               masks_to_bounds: true,
                               background_color: UIColor.whiteColor, # Creates a UIView for the backgroundView
                 },
                 action: :inquiries,
                 image: {
                     image: "images/icons/inquiries.png", # PM will do `UIImage.imageNamed("something")` for you
                     # radius: 15 # radius is optional
                 },
             },
             {
                 title: "Settings",
                 height: 40,
                 properties: { # (Edge change, use `style:` in ProMotion 2.0.x)
                               masks_to_bounds: true,
                               background_color: UIColor.whiteColor, # Creates a UIView for the backgroundView
                 },
                 action: :settings,
                 image: {
                     image: "images/icons/settings.png", # PM will do `UIImage.imageNamed("something")` for you
                     # radius: 15 # radius is optional
                 },
             },
             {
                 title: "Bookings",
                 height: 40,
                 properties: { # (Edge change, use `style:` in ProMotion 2.0.x)
                               masks_to_bounds: true,
                               background_color: UIColor.whiteColor, # Creates a UIView for the backgroundView
                 },
                 action: :bookings,
                 image: {
                     image: "images/icons/bookings.png", # PM will do `UIImage.imageNamed("something")` for you
                     # radius: 15 # radius is optional
                 },
             }
         ]
     }]
  end

  def dashboard
    PM.logger.info "dashboard"
  end

  def inquiries
    PM.logger.info "inquiries"
  end

  def settings
    PM.logger.info "Settings"
  end

  def bookings
    PM.logger.info "Bookings"
  end
end