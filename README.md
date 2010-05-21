# yard-defaultreturn

Adds `@defaultreturn` tag to classes/modules to define a return tag on every
method in the namespace.

## Usage

Using `@defaultreturn` will automatically declare `@return` tags on methods
without any return type defined inside the class/module:

    # @defaultreturn [Boolean] the boolean value
    class A
      def foo; end
      
      # @return [Array] override default
      def bar; end
    end

## Install

    gem install yard-defaultreturn

or checkout source and

    rake install