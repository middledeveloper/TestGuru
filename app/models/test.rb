# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', optional: true
  has_many :questions

  has_many :tests_users
  has_many :users, through: :tests_users

  def self.by_category_title_repo(category_title)
    Test
      .joins(:category)
      .where(categories: { title: category_title })
      .order('tests.id DESC')
      .pluck(:title)
  end
end
