class UserTagSnippet < ApplicationRecord
    belongs_to :user_tag
    belongs_to :snippet

    self.table_name = "user_tag_snippet"
    
end