class User2 < ApplicationRecord

  self.table_name = 'users'
  
  belongs_to :role
end
