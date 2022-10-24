# frozen_string_literal: true

class MasterData < ActiveYaml::Base
  def self.inherited(klass)
    super

    klass.include ActiveHash::Associations
    klass.set_root_path('db', 'fixtures')
  end
end
