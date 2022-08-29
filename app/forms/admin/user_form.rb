# frozen_string_literal: true

class Admin::UserForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :age, :integer

  validates :age, presence: true
end