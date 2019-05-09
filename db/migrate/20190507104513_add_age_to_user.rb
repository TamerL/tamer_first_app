class AddAgeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :age, :integer, null: false, inclusion: 0..120, default: 20
  end
end
