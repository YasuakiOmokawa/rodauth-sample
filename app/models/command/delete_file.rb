# frozen_string_literal: true

module Command
  class DeleteFile < Command
    def initialize(path)
      super("Delete File: #{path}")
      @path = path
    end

    def execute
      FileUtils.rm_f(@path)
    end
  end
end
