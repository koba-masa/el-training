class AddTasksLack < ActiveRecord::Migration[6.1]
  def up
    add_column :tasks, :user_id, :string
    add_column :tasks, :deadline_date, :date
    add_column :tasks, :deadline_time, :time
    add_column :tasks, :status, :integer
    add_column :tasks, :priority, :integer
  end
  def down
    remove_column :tasks, :user_id, :string
    remove_column :tasks, :deadline_date, :date
    remove_column :tasks, :deadline_time, :time
    remove_column :tasks, :status, :integer
    remove_column :tasks, :priority, :integer
  end
end
