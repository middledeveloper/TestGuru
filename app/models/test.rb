# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category

  def self.by_category_title_repo(category_title)
    id_value = Category.where(title: category_title).first
    repo = Test.where(category_id: id_value).order('id DESC').pluck(:title)
    # repo.each { |test| puts test }
  end
end
