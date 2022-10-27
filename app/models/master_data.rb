# frozen_string_literal: true

class MasterData < ActiveYaml::Base
  def self.inherited(klass)
    super

    klass.include ActiveHash::Associations
    klass.set_root_path Rails.root.join('db', 'fixtures')
  end
end
