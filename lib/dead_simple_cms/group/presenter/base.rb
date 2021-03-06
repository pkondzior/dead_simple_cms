require 'delegate'
module DeadSimpleCMS
  class Group
    # Public: Presenter class used for rendering groups.
    #
    # Within the context of this group, you can call methods as if you were in the view_context.
    module Presenter
      class Base < SimpleDelegator

        attr_reader :group

        def initialize(view_context, group, *args)
          @group = group
          initialize_extra_arguments(*args)
          super(view_context)
        end

        # Private: Initialize extra arguments for the presenter.
        def initialize_extra_arguments(*args)
        end

        def render
          raise(NotImplementedError, "Please define your own #render method.")
        end

      end
    end
  end
end