# frozen_string_literal: true

module PartsFactory
  extend self

  def self.build(config, parts_class = Parts)
    parts_class.new(
      config.collect { create_part(_1) },
    )
  end

  private

  MyStruct = Struct.new(:name, :description, :needs_spare)
  def create_part(part_config)
    MyStruct.new(
      part_config[0],
      part_config[1],
      part_config.fetch(2, true),
    )
  end
end
