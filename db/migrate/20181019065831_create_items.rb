class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :user_id
      # user_id...ログインユーザーに紐付けるためのカラム

      t.timestamps
    end
  end
end
