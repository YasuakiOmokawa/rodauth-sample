# frozen_string_literal: true

class CreateRemoveReferenceFromCompanies < ActiveRecord::Migration[7.0]
  def change
    remove_reference :companies, :sub_option
  end
end
