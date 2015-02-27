class CreateNewSouths < ActiveRecord::Migration
  def change
    create_table :new_souths do |t|
      t.string :title
      t.text :notes
      t.date :due
      t.boolean :done

      t.timestamps
    end
  end
end
