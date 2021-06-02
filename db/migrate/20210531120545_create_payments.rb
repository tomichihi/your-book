class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer   :price, null:false
      t.references :user,foreign_key:true, null:false
      t.timestamps
    end
  end
end
