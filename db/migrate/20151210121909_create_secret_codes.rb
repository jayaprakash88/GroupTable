class CreateSecretCodes < ActiveRecord::Migration
  def change
    create_table :secret_codes do |t|
      t.string :code
      t.integer :user_id, index: true

      t.timestamps null: false
    end
  end
end
