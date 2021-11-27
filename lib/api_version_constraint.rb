# Class to check api version constraint
class ApiVersionConstraint
  attr_reader :version, :default

  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{version}")
  end
end
