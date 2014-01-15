module ApplicationHelper
  def alert_class(name)
    case name.to_s
    when 'notice'
      name = 'warning'
    when 'invalid'
      name = 'danger'
    end
    "alert-#{name}"
  end
end
