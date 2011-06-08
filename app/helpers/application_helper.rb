module ApplicationHelper
  # Sets base title
  def title
    base_title = "The Web Collector"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
