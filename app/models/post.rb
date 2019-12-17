# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true, length: { minimun: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 6, maximum: 400 }

  belongs_to :user
end
