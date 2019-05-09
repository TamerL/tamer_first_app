class AddYearToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :year, :integer, null: false, inclusion: 2000..2019, default: 2010
  end
end
