class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|

      t.timestamps null: false
    end

    create_table :attributions do |t|

      t.timestamps null: false
    end
  end
end
