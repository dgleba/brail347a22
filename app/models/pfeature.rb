class Pfeature < ApplicationRecord
   has_many :product_feature
   has_many :product, through: :product_feature

    def self.pf1b
        # raw sql select using ...
        Pfeature.find_by_sql \
          <<-SQL
          
          select name, Upper(name) as upname from pfeatures
         
          SQL
    end    

end
