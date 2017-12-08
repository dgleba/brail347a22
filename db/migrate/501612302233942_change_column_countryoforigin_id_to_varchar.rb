class ChangeColumnCountryoforiginIdToVarchar < ActiveRecord::Migration[5.0]
  def change
        change_column :products, :country_of_origin_id, :string
  end
end
