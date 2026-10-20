module ApplicationHelper
  def fa_icon(icon, additional_attrs = {})
    content_tag(:i, nil, class: "fa fa-#{icon} #{additional_attrs[:class]}")
  end
end
