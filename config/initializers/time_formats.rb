Time::DATE_FORMATS[:custom_12h] = lambda { |time|
  day_format = ActiveSupport::Inflector.ordinalize(time.day)
  time.strftime("%B #{day_format}, %Y %I:%M %p")
}
