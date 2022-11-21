# frozen_string_literal: true

class CreateSubOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_options, &:timestamps
  end
end
