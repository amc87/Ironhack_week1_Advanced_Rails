class CreateSandwichIngredients < ActiveRecord::Migration
  def change
    create_table :sandwich_ingredients do |t|
    	t.references :sandwich, index: true
    	t.references :ingredient, index: true
      t.timestamps null: false
    end
  end
end
