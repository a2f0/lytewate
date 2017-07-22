class Snippet < ApplicationRecord
    validates :description, presence: true
    validates :body, presence: true
    has_many :user_tag_snippets
    has_many :user_tags, through: :user_tag_snippets
end
