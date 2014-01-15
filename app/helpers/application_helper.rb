module ApplicationHelper
  def alert_class(name)
    name = 'warning' if name.to_s == 'notice'
    "alert-#{name}"
  end
end
