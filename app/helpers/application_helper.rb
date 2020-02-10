# frozen_string_literal: true

module ApplicationHelper
  def current_year
    DateTime.now.year
  end

  def github_url(author, repo)
    "https://github.com/#{author}/#{repo}"
  end
end
