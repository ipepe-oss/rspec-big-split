require "rspec/core/formatters/json_formatter"

module Rspec
  module Big
    module Split
      class Formatter < ::RSpec::Core::Formatters::JsonFormatter
        ::RSpec::Core::Formatters.register self

        private

        def format_example(example)
          original = super
          {
            id: example.id,
            ci_split_example_groups: example.metadata[:ci_split_example_groups],
            example_group_id: example.example_group.id
          }.merge(original.slice(:file_path))
        end
      end
    end
  end
end
