class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  # for rich text
  has_rich_text :body
end
