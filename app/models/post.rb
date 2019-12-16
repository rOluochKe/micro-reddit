class Post < ApplicationRecord
  validate :title, presence :true, length {min :6, max :100}
  validate :description, presence :true, length {min :6, max :400}

  belongs_to :user
end
