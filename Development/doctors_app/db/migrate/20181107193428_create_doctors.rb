class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
	 t.string :name
	 t.string :specialty
	 t.boolean :insurance
	 t.string :gender
      t.timestamps
    end
  end
end
