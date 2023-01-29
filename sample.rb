# frozen_string_literal: true

road_bike = Bicycle.new(
  size: 'L',
  parts: RoadBikeParts.new(tape_color: 'red'),
)
road_bike.size
mountain_bike = Bicycle.new(
  size: 'L',
  parts: MountainBikeParts.new(rear_shock: 'Fox'),
)
mountain_bike.size

chain = Part.new(name: 'chain', description: '10-speed')
road_tire = Part.new(name: 'tire_size', description: '23')
tape = Part.new(name: 'tape_color', description: 'red')
road_bike_parts = Parts.new([chain, road_tire, tape])
road_bike = Bicycle.new(
  size: 'L',
  parts: road_bike_parts,
)
road_bike.size
p road_bike.spares.size
p road_bike.parts.size

mountain_config = [
  %w[chain 10-speed],
  %w[tire_size 2.1],
  %w[front_shock Manitou false],
  %w[rear_shock Fox],
]
mountain_bike = Bicycle.new(
  size: 'M',
  parts: PartsFactory.build(mountain_config),
)
p mountain_bike.size
p mountain_bike.spares.size
p mountain_bike.parts.size
p mountain_bike.spares

# インタフェース分離の法則
bird = Bird.new
p bird.cry # => '鳴く'
p bird.eat # => '食べる'
p bird.fly # => '飛ぶ'

human = Human.new
p human.walk # => '歩く'
p human.eat # => '食べる'
# 人間が飛ぶのはおかしい
p human.fly # => '飛ぶ'

# webから登録しようとしたとき
form = Web::UserForm.new(name: nil, age: 20)
p form.valid? # => false
valid_form = Web::UserForm.new(name: 'user_name', age: 20)
p valid_form.valid? # => false

# 管理画面から登録しようとしたとき
form = Admin::UserForm.new(name: 'user_name', age: nil)
p form.valid? # => false
