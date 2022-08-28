module PartsFactory
  def self.build(config, part_class = Part, parts_class = Parts)
    parts_class.new(
      config.collect {
        part_class.new(
          name: _1[0],
          description: _1[1],
          needs_spare: _1.fetch(2, true)
        )
      }
    )
  end
end