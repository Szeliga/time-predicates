module Timeline
  module Predicates
    def after?(moment)
      self > moment
    end

    def before?(moment)
      self < moment
    end

    def after_or_equal?(moment)
      self >= moment
    end

    def before_or_equal?(moment)
      self <= moment
    end
  end
end

Date.send(:include, Timeline::Predicates)
Time.send(:include, Timeline::Predicates)
