class DownloaderBase
  def initialize(executable, defaults, argv)
    @executable = executable
    @defaults = defaults
    @urls = argv.empty? ? @defaults : argv
  end

  def run
    pids = spawn
    wait(pids)
  end

  private

  def spawn
    @urls.map { |url|
      call = [ @executable, url_arg(url) ].join(" ")
      Process.spawn(call, out: STDOUT, err: STDOUT)
    }
  end

  def wait(pids)
    pids.each do |pid|
      Process.wait(pid)
    end
  end

  def url_arg(url)
    url
  end
end

