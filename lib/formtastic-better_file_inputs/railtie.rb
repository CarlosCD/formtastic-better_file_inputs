module Formtastic
  module BetterFileInputs
    class Railtie < ::Rails::Railtie
      initializer 'formtastic-better_file_inputs.initialize' do
        if defined?(Formtastic::Inputs)
          require 'formtastic-better_file_inputs/file_field_input'
          require 'formtastic-better_file_inputs/image_field_input'
        end
      end
    end
  end
end

