module ApplicationHelper
  def is_active(action)
    'active' if params[:action] == action
  end
  def flash_class(level)
    case level
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-danger"
      when :alert then "alert alert-error"
    end
  end
end
