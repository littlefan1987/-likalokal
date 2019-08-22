class ChangeColumnActivities < ActiveRecord::Migration[5.2]
  def change
    rename_column :activities, :city, :address
  end
end
