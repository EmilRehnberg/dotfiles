class DownloaderBase
  def initialize(argv)
    @urls = argv.empty? ? self.class::DEFAULTS : argv
  end

  def run
    pids = spawn
    wait(pids)
  end

  private

  def spawn
    @urls.map { |url|
      call = [ self.class::EXECUTABLE, url_arg(url) ].join(" ")
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

