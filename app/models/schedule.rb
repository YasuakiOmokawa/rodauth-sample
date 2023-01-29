# frozen_string_literal: true

class Schedule
  def scheduled?(schedulable, start_date, end_date)
    Rails.logger.debug {
      "This #{schedulable.class} " \
        "is not scheduled\n" \
        " between #{start_date} and #{end_date}"
    }
    false
  end
end
