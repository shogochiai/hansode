class CreateClientsContacts < ActiveRecord::Migration
  def change
    create_table :clients_contacts do |t|
      t.integer :client_id
      t.integer :contact_id
    end
  end
end
