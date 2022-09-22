# frozen_string_literal: true

module StrategyPattern
  class MountainBike
    extend Forwardable
    def_delegators :@bike_type, :off_road_ability

    attr_reader :type_code

    TIRE_WITH_FACTOR = 10
    FRONT_SUSPENSION_FACTOR = 20
    REAR_SUSPENSION_FACTOR = 30

    def initialize(params)
      set_state_from_hash(params)
    end

    def type_code=(value)
      @type_code = value
      @bike_type = case type_code
      when :rigid then StrategyPattern::RigidMountainBike.new(tire_width: @tire_width)
      when :front_suspension then StrategyPattern::FrontSuspensionMountainBike.new(tire_width: @tire_width, front_fork_travel: @front_fork_travel)
      when :full_suspension then StrategyPattern::FullSuspensionMountainBike.new(tire_width: @tire_width, front_fork_travel: @front_fork_travel, rear_fork_travel: @rear_fork_travel)
      end
    end

    def add_front_suspension(params)
      self.type_code = :front_suspension
      @bike_type = StrategyPattern::FrontSuspensionMountainBike.new(
        {tire_width: @tire_width}.merge(params))
      set_state_from_hash(params)
    end

    def add_rear_suspension(params)
      unless type_code == :front_suspension
        raise 'You can\'t add rear suspension unless you have front suspension'
      end
      self.type_code = :full_suspension
      set_state_from_hash(params)
    end


    def price
      case type_code
      when :rigid
        (1 + @commission) * @base_price
      when :front_suspension
        (1 + @commission) * @base_price + @front_suspension_price
      when :full_suspension
        (1 + @commission) * @base_price + @front_suspension_price + @rear_suspension_price
      end
    end

    private

    def set_state_from_hash(hash)
      @base_price = hash[:base_price] if hash.has_key?(:base_price)
      if hash.has_key?(:front_suspension_price)
        @front_suspension_price = hash[:front_suspension_price]
      end
      if hash.has_key?(:rear_suspension_price)
        @rear_suspension_price = hash[:rear_suspension_price]
      end
      if hash.has_key?(:commission)
        @commission = hash[:commission]
      end
      if hash.has_key?(:tire_width)
        @tire_width = hash[:tire_width]
      end
      if hash.has_key?(:front_fork_travel)
        @front_fork_travel = hash[:front_fork_travel]
      end
      if hash.has_key?(:rear_fork_travel)
        @rear_fork_travel = hash[:rear_fork_travel]
      end
      self.type_code = hash[:type_code] if hash.has_key?(:type_code)
    end
  end
end