# frozen_string_literal: true

module PartsFactory
  extend self

  def self.build(config, parts_class = Parts)
    parts_class.new(
      config.collect { create_part(_1) }
    )
  end

  private

  def create_part(part_config)
    OpenStruct.new(
      name: part_config[0],
      description: part_config[1],
      needs_spare: part_config.fetch(2, true)
    )
  end
end
