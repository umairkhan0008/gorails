class AddPasswordToWorkers < ActiveRecord::Migration[7.1]
  def change
    add_column :workers, :password, :string
  end
end
