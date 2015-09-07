class CreateSpells < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :name

      t.string :action_time # eg Reaction, Bonus, Action, Movement, 1 minute, 10 minutes, 8 hours
      t.string :action_range
      t.string :hit_type # eg Melee?, Ranged?, Spell, CON Spell Save, DEX Spell Save

      t.string :duration
      t.string :target
      t.string :target_size

      t.text :full_text

      t.timestamps null: false
    end

    create_table :spells do |t|

      t.string :name
      t.string :level
      t.string :school

      t.string :action_time
      t.string :action_range
      t.string :hit_type

      t.string :duration
      t.string :target
      t.string :target_size

      t.text :full_text

      # t.string :future_actions

      t.boolean :concentration
      t.boolean :ritual
      t.boolean :verbal
      t.boolean :somatic
      t.string :material
      t.boolean :consumes_material


      # t.references :types, type: 'string', polymorphic: true, index: true, foreign_key: true # type: 'string'
      t.timestamps null: false
    end

    create_table :sub_actions do |t|
      t.string :name
      t.references :source, polymorphic: true

      t.string :action_time
      t.string :action_range
      t.string :duration
      t.string :target
      t.string :target_size

      t.text :full_text

      t.timestamps null: false
    end
  end
end
