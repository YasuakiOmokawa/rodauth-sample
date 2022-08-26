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
road_bike.spares
