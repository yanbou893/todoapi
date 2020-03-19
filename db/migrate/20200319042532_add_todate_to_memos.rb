class AddTodateToMemos < ActiveRecord::Migration[6.0]
  def change
    add_column :memos, :todate, :string
  end
end
