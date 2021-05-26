class CreateIntros < ActiveRecord::Migration[6.0]
  def change
    create_table :intros do |t|
      t.text       :book,                   null: false            
      t.text       :review,                 null: false         
      t.string     :category_id,            null: false 
      t.references :user, foregin_key: true,null: false         
      t.timestamps      
    end
  end
end
