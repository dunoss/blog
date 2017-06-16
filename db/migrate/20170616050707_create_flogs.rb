class CreateFlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :flogs do |t|
      t.date :date
      t.string :location
      t.string :who
      t.text :description

      t.timestamps
    end
  end
end
