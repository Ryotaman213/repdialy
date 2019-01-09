class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string       :name
      t.string       :birthday
      t.text         :cagesize
      t.integer      :user_id
      t.timestamps
    end
  end
end
