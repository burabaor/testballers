module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def format_only_br(str)
    return sanitize(str).gsub("\n", '<br>').html_safe
  end
end
