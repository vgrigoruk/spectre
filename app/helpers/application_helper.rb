module ApplicationHelper

  def thumbnail(thumbnail)
    "<img class='lazy' data-original='#{thumbnail.url}' width='#{Thumb::DEFAULT_WIDTH}px' />".html_safe rescue ''
  end

  def format_date(date)
    "<span title=\"#{date.to_formatted_s(:long_ordinal)}\">#{time_ago_in_words(date)} ago</span>".html_safe
  end

  def screenshot_url(screenshot)
    screenshot ? screenshot.remote_url : '#'
  end
end
