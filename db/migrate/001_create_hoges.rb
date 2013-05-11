class CreateHoges < ActiveRecord::Migration
  def change
    create_table :hoges do |t|
      t.string :question
      t.integer :yes
      t.integer :no
    end
  end
end
