# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :questions

  has_many :tests_users
  has_many :users, through: :tests_users

  scope :simple, -> { where(level: [0..1]) }
  scope :middle, -> { where(level: [2..4]) }
  scope :hard, -> { where(level: [5..]) } # or [5..Float::INFINITY]

  scope :by_category_title_repo, ->(category_title) {
                                  joins(:category)
                                  .where(categories: { title: category_title })
                                  .order(id: :desc)
                                  .pluck(:title)
                                }

  validates :title, presence: true
  validates :level, numericality: { only_integer: true, greater_than: 0 }
  # unique 'title + level' pair values
  validates :title, uniqueness: {
    scope: :level, message: 'We already have this test in Db' }

  #def self.by_category_title_repo(category_title)
  #    Test
  #      .joins(:category)
  #      .where(categories: { title: category_title })
  #      .order('tests.id DESC')
  #      .pluck(:title)
  #  end
end
