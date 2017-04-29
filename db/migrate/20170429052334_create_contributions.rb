class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.references :user
      t.string :image_url
      t.string :container
      t.text :processing_results

      t.timestamps
    end
  end
end
