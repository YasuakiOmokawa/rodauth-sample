class Bicycle
  def initialize(args = {})
    @schedule = args[:schedule] || Schedule.new
  end

  attr_reader :schedule, :size, :chain, :tire_size

  def schedulable?(start_date, end_date)
    !scheduled?(start_date - lead_days, end_date)
  end

  def scheduled?(start_date, end_date)
    schedule.scheduled?(self, start_date, end_date)
  end

  def lead_days
    1
  end
end