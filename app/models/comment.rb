# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :body, presence: true, length: { minimum: 6, maximum: 50 }

  belongs_to :post
end
