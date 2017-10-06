class CreateJoinTableUserOffer < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :offers, table_name: :users_offers, column_options: { index: true } do |t|
      #  create_join_table :users, :offers

      # t.index [:user_id, :offer_id]
      # t.index [:offer_id, :user_id]
    end
  end
end
