# frozen_string_literal: true

class TemplateMethodPattern::PlainTextReport < Report
  private

  def output_start; end

  def output_head
    Rails.logger.debug { "**** #{title} ****" }
    puts
  end

  def output_body_start; end

  def output_line(line)
    Rails.logger.debug(line)
  end

  def output_body_end; end

  def output_end; end
end
