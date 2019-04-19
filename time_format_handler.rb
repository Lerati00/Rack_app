class TimeFormatHandler
  FORMAT = {
    year: '%Y',
    month: '%m',
    day: '%d',
    hour: '%H',
    minute: '%M',
    second: '%S'
  }

  attr_reader :formats, :unknown_formats

  def initialize(format_string)
    @format_string = format_string

    check_format
  end

  def result
    Time.now.strftime(@formats.join('-'))
  end

  private

  def check_format
    @formats         = []
    @unknown_formats = []

    @format_string.split(',').each do |format|
      FORMAT[format.to_sym] ? @formats.push(FORMAT[format.to_sym]) : @unknown_format.push(format)
    end
  end
end