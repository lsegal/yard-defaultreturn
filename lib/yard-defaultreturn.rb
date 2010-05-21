module YARD
  module Plugins
    module DefaultReturn
      module MethodHandler
        def register(*objects)
          retval = super
          objects.each do |object|
            if (tag = namespace.tag(:defaultreturn)) && !object.has_tag?(:return)
              object.docstring.add_tag Tags::Tag.new(:return, tag.text, tag.types)
            end
          end
          retval
        end
      end
      
      Handlers::Ruby::MethodHandler.send(:include, MethodHandler)
      Handlers::Ruby::Legacy::MethodHandler.send(:include, MethodHandler)
    end
  end
end

YARD::Tags::Library.define_tag("Default Return", :defaultreturn, :with_types)
