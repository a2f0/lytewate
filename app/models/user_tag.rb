class UserTag < ApplicationRecord
    validates :label, presence: true
    has_many :user_tag_snippets
    has_many :snippets, through: :user_tag_snippets
end
