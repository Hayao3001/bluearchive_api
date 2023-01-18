class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :image_url
      t.string :name
      t.string :full_name
      t.string :rarity
      t.string :role
      t.string :position
      t.string :class
      t.string :weapon_type
      t.string :shelter
      t.string :attack_type
      t.string :defensive_type
      t.string :academy
      t.string :club
      t.string :age
      t.string :birthday
      t.string :stature
      t.string :hobby
      t.string :design
      t.string :illustration
      t.string :CV
      t.string :version

      t.timestamps
    end
  end
end
