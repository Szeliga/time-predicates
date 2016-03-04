module TimePredicates
  module Basic
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

Date.send(:include, TimePredicates::Basic)
Time.send(:include, TimePredicates::Basic)
