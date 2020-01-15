# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category

  def self.by_category_title_repo(category_title)
    Test
      .joins(:category)
      .where(categories: { title: category_title })
      .order('tests.id DESC')
      .pluck(:title)
  end
end
