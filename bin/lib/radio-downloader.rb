# NOTE: Requires `wget` and `chronic`-gem
# gem install chronic

require 'chronic'

class RadioDownloader
  EXECUTABLE = 'wget'
  QUALITY = 'a192'

  def initialize(channel, program, options={})
    @radio_channel = channel
    @base_url = "http://lyssna.sr.se/autorec/et2w/#{@radio_channel}/#{program}"
    @options = options
  end

  def run
    insert_options
    begin
      @args = Arguments.new(ARGV)
      system("#{EXECUTABLE} #{url}")
      system("m4a-to-mp3 #{filename}")
      system("rm #{filename}")
    rescue => e
      puts e
      print_usage
    end
  end

  private

  def url
    "#{@base_url}/#{date_parts_of_url}/#{filename}"
  end

  def date_parts_of_url
    "#{@args.year}/#{@args.month}"
  end

  def filename
    "sr#{@radio_channel}_#{@args.date}_#{@args.time_of_day}_#{@args.duration}_#{QUALITY}.m4a"
  end

  def print_usage
    puts "USAGE: #{radio_channel}#{program} YYYYMMDD [HHMM DURATION_MIN]"
  end

  def insert_options
    insert_time
    insert_duration
  end

  def insert_time
    ARGV[1] = @options[:time] if @options[:time]
  end

  def insert_duration
    ARGV[2] = @options[:duration] if @options[:duration]
  end
end

class Arguments
  SECS_OF_DAY = '00'

  def initialize(arguments)
    @datetime = Chronic.parse("#{arguments[0]} #{arguments[1]}")
    @duration_min = arguments[2]
  end

  def date
    @datetime.strftime("%Y-%m-%d")
  end

  def year
    @datetime.year
  end

  def month
    @datetime.strftime("%m")
  end

  def time_of_day
    @datetime.strftime("%H%M00")
  end

  def duration
    "#{@duration_min.to_i * 60}"
  end
end
