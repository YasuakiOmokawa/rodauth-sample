# frozen_string_literal: true

class Command::CopyFile < Command
  def initialize(source, destination)
    super("Copy File: #{source} -> #{destination}")
    @source = source
    @destination = destination
  end

  def execute
    FileUtils.cp_r(@source, @destination)
  end

  def unexecute
    FileUtils.rm_f(@destination)
  end
end
