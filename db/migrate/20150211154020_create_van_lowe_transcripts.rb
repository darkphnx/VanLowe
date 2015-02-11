class CreateVanLoweTranscripts < ActiveRecord::Migration
  def change
    create_table :van_lowe_transcripts do |t|
      t.string :parent_type
      t.integer :parent_id

      t.string :request_url
      t.string :request_method
      t.text :request_headers
      t.text :request_body
      
      t.text :response_headers
      t.text :response_body

      t.timestamps
    end
    add_index :van_lowe_transcripts, [:parent_type, :parent_id]
  end
end
