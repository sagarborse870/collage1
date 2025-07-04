class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.integer :roll_no
      t.string :name
      t.string :address
      t.integer :mobile
      t.integer :age

      t.timestamps
    end
  end
end
