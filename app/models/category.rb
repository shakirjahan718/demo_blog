class Category < ApplicationRecord
  has_many :posts, dependent: :destroy

  def self.shedule_category
    Category.create(name: "Schedule at #{Time.now}", display_in_nav: true)
  end
end
