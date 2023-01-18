class RenameClassColumnToStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :class, :attribute
  end
end
