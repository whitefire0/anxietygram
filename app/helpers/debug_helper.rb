module DebugHelper
  COLOR_RED = "\e[31m"
  COLOR_RESET = "\e[0m"

  def self.log(msg, var = nil)
    Rails.logger.debug "\n"
    Rails.logger.debug Thread.current.backtrace[1]
    Rails.logger.debug Thread.current.backtrace[2]
    Rails.logger.debug Thread.current.backtrace[3]
    Rails.logger.debug "Debug msg: #{COLOR_RED}#{msg}#{COLOR_RESET}"
    Rails.logger.debug "Debug var: #{var}"
    Rails.logger.debug "\n"
  end

  def self.mylog(filename, msg, var = nil)
    @@logger ||= Logger.new(["#{Rails.root}/log/", filename, ".log"].join)
    @@logger.debug "Debug msg: #{msg}"
    @@logger.debug "Debug var: #{var}"
    @@logger.debug "\n"
  end
end