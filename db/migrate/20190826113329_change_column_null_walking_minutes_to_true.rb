class ChangeColumnNullWalkingMinutesToTrue < ActiveRecord::Migration[5.0]
  def change
    change_column_null :stations, :walking_minutes, true
  end
end
