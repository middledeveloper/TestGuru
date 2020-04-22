# frozen_string_literal: true

module ApplicationHelper
  def current_year
    DateTime.now.year
  end

  def github_url(author, repo)
    link_to 'Github', "https://github.com/#{author}/#{repo}"
  end

  def flash_message(type)
    content_tag :p, flash[type], class: "flash #{type}" if flash[type]
  end

  def alert_class(type)
    case type
    when 'notice' then 'info'
    when 'success' then 'success'
    when 'error' then 'danger'
    when 'alert' then 'warning'
    else 'bug'
    end
  end
end
