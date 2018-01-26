class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :content
      t.string :archived

      t.timestamps
    end
  end
end
