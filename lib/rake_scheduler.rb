require_relative 'rake_scheduler/version'
require 'rake'

module RakeScheduler
  class << self
    def daily(task_name, &block)
      invoke_task(task_name, &block)
    end

    def weekly(task_name, &block)
      invoke_task(task_name, weekly_condition, &block)
    end

    def monthly(task_name, &block)
      invoke_task(task_name, monthly_condition, &block)
    end

    def yearly(task_name, &block)
      invoke_task(task_name, yearly_condition, &block)
    end

    private
    
    def invoke_task(task_name, invoke = true)
      begin
        additional_condition = true
        additional_condition = yield Date.today if block_given?
        Rake::Task[task_name].invoke and return true if invoke && additional_condition
        false
      rescue RuntimeError
        "Don't know how to build task '#{task_name}'"
      end
    end

    def monthly_condition
      Date.today.day == 1
    end

    def weekly_condition
      Date.today.monday?
    end

    def yearly_condition
      Date.today.month == 1 && monthly_condition
    end
  end
end

