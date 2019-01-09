class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.integer        :height
      t.integer        :weight
      t.string         :food
      t.string         :poop
      t.string         :shed
      t.text           :comment
      # t.integer        :user_id
      # t.integer        :pets_id
      t.timestamps
    end
  end
end
