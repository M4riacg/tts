class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :tecnic_id
      t.string :title
      t.text :content
      t.integer :priority
      t.integer :status

      t.timestamps null: false
    end
  end
end
