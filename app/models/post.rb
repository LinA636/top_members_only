class Post < ApplicationRecord
    belongs_to :user
    
    validates :title, presence: true
    validates :content, presence: true

    # Add any associations if your Post model is related to other models
    # belongs_to :user
end
