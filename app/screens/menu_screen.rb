class MenuScreen < PM::TableScreen
  title "Menu"

  def on_load
    self.view.backgroundColor = UIColor.redColor
  end

  def table_data
    [{
         title: nil,
         cells: [{
                     title: nil,
                     action: nil
                 }]
     }, {
         title: nil,
         cells: [
             {
                 title: "Dashboard",
                 action: :dashboard,
                 properties: {
                     icon: 'https://cdn.thekatagency.com/the_kat_bot.png'
                 }
             },
             {
                 title: "Inquiries",
                 action: :inquiries
             },
             {
                 title: "Settings",
                 action: :settings
             },
             {
                 title: "Bookings",
                 action: :bookings
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