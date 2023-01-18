class RenameAttributeColumnToStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :attribute, :attack_class
  end
end
