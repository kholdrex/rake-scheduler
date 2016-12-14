require_relative 'rake_scheduler/version'
require 'rake'

module RakeScheduler
  class << self
    def daily(task_name)
      invoke_task(task_name)
    end

    def weekly(task_name)
      invoke_task(task_name, weekly_condition)
    end

    def monthly(task_name)
      invoke_task(task_name, monthly_condition)
    end

    def yearly(task_name)
      invoke_task(task_name, yearly_condition)
    end

    private

    def invoke_task(task_name, invoke = true)
      begin
        Rake::Task[task_name].invoke and return true if invoke
        false
      rescue Exception
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

