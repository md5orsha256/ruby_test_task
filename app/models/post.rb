class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', required: true, foreign_key: 'user_id'
end
