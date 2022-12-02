# frozen_string_literal: true

class AddCompanyIdToSubOptions < ActiveRecord::Migration[7.0]
  def change
    add_reference :sub_options, :company, foreign_key: true
  end
end
