class CreateTeamMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_members do |t|
      t.references :user, foreign_key: true
      t.text :application_message
      t.boolean :accepted
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
