class Pobox::Migrations::CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :sender
      t.text :recipient
      t.text :subject
      t.text :raw
    end

    add_index :messages, [:recipient]
  end
end
