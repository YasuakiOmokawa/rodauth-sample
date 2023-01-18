# frozen_string_literal: true

module Command
  class DeleteFile < Command
    def initialize(path)
      super("Delete File: #{path}")
      @path = path
    end

    def execute
      @contents = File.read(@path) if File.exist?(@path)
      FileUtils.rm_f(@path)
    end

    def unexecute
      if @contents
        f = File.open(@path, 'w')
        f.write(@contents)
        f.close
      end
    end
  end
end
