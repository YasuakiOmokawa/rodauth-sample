# frozen_string_literal: true

class AddSubOptionRefToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_reference :companies, :sub_option, foreign_key: true
  end
end
