require 'csv'

module ActiveCSV
  class Base

    def initialize(row=nil)
      @row = row
    end

    def method_missing(method_name)
      if @row.has_key?(method_name.to_s)
        @row.field(method_name.to_s)
      else
        super
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      @row.include?(method_name.to_s)
    end

    def self.file_path=(file_path)
      @file_path = file_path
    end

    def self.file_path
      @file_path
    end

  end
end