module IconHelper

  def icon_tag(*icons)
    options = icons.extract_options!
    content_tag(:i, options.merge(:class => icon_class(*icons)) ) do
    end
  end

  def icon_class(*icons)
    %w(fa) + icons.map{|i| "fa-#{i.to_s}"}
  end

end
