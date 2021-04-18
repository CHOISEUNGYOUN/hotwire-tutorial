class Comment < ApplicationRecord
  belongs_to :ticket
  has_rich_text :content
end
