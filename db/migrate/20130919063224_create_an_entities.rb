class CreateAnEntities < ActiveRecord::Migration
  def change
    create_table :an_entities do |t|
      t.string :attr1
      t.string :attr2

      t.timestamps
    end
  end
end
