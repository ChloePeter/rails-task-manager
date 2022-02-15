class Task < ApplicationRecord
    def tasks
      create_table :tasks do |t|
        t.string :title
        t.text :details
        t.boolean :completed

        t.timestamps
      end
    end
  end
end
