class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :user
      t.text :content
      t.timestamps
    end
  end
end
