class AddClientRefToPet < ActiveRecord::Migration[6.0]
  def change
    add_reference :pets, :client, foreign_key: true#null: false, foreign_key: true
  end
end
