class CreateFanTokens < ActiveRecord::Migration
  def change
    create_table :fan_tokens do |t|
      t.string :remember_token
      t.string :user_email

      t.timestamps
    end
  end
end
