require "time-predicates/version"

module TimePredicates
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

Date.send(:include, TimePredicates)
Time.send(:include, TimePredicates)
