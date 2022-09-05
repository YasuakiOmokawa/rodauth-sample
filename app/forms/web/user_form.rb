# frozen_string_literal: true

module Web
  class UserForm
    include ActiveModel::Model
    include ActiveModel::Attributes

    attribute :name, :string
    attribute :age, :integer

    validates :name, presence: true
  end
end
