# frozen_string_literal: true

module Command
  class CompositeCommand < Command
    def initialize
      @commands = []
    end

    def add_command(command)
      @commands << command
    end

    def execute
      @commands.each(&:execute)
    end

    def description
      description = ''
      @commands.each { |command| description += "#{command.description}\n" }
      description
    end
  end
end
