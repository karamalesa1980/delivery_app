class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages do |t|
      t.string :tracking_number
      t.boolean :delivery_status
      t.references :courier

      t.timestamps
    end
  end
end
