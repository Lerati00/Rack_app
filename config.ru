require_relative "middeware/runtime"
require_relative "middeware/logger"
require_relative "app"

use Runtime
use AppLogger, logdev: File.expand_path('log/app.log', __dir__)
run App.new
