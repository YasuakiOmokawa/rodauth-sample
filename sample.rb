# frozen_string_literal: true

road_bike = Bicycle.new(
  size: 'L',
  parts: RoadBikeParts.new(tape_color: 'red')
)
road_bike.size
mountain_bike = Bicycle.new(
  size: 'L',
  parts: MountainBikeParts.new(rear_shock: 'Fox')
)
mountain_bike.size

chain = Part.new(name: 'chain', description: '10-speed')
road_tire = Part.new(name: 'tire_size', description: '23')
tape = Part.new(name: 'tape_color', description: 'red')
road_bike_parts = Parts.new([chain, road_tire, tape])
road_bike = Bicycle.new(
  size: 'L',
  parts: road_bike_parts
)
road_bike.size
p road_bike.spares.size
p road_bike.parts.size

mountain_config = [
  %w[chain 10-speed],
  ['tire_size', '2.1'],
  ['front_shock', 'Manitou', false],
  %w[rear_shock Fox]
]
mountain_bike = Bicycle.new(
  size: 'M',
  parts: PartsFactory.build(mountain_config)
)
p mountain_bike.size
p mountain_bike.spares.size
p mountain_bike.parts.size
p mountain_bike.spares
