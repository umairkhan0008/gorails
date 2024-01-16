class CreateWorkers < ActiveRecord::Migration[7.1]
  def change
    create_table :workers do |t|
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
