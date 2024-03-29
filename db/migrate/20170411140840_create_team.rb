# frozen_string_literal: true

class CreateTeam < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.text   :description
      t.belongs_to :owner, references: :user

      t.timestamps
    end
  end
end
