class CreateCharClasses < ActiveRecord::Migration
  def change
    create_table :race do |t|

      t.timestamps null: false
    end

    create_table :sub_race do |t|

      t.timestamps null: false
    end

    create_table :prototype do |t|

      t.timestamps null: false
    end

    create_table :archtype do |t|

      t.timestamps null: false
    end

    create_table :action_source do |t|
      t.references :action, polymorphic: true
      t.references :source, polymorphic: true

      t.timestamps null: false
    end
  end
end
