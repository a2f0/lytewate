class Snippet < ApplicationRecord
    validates :description, presence: true
    validates :body, presence: true
end
