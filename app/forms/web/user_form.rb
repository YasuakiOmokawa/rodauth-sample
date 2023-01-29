# frozen_string_literal: true

class Web::UserForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :age, :integer

  validates :name, presence: true
end
