class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  class << self
    def sys_date
      Time.zone.today
    end

    def sys_time
      Time.current
    end
  end

  def model_class
    controller_name.classify.constantize
  end

  def sys_date
    self.class.sys_date
  end

  def sys_time
    self.class.sys_time
  end
end
