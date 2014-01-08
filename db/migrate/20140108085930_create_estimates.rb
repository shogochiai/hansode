class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.string :title
      t.text :body
      t.integer :author_id
      t.integer :client_id
      t.date :published_date
      t.date :expiration_date

      t.timestamps
    end
  end
end
