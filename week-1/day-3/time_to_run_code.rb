# frozen_string_literal: true

# Problem Statement
#
# You are given some code in the form of lambdas.
#
# Measure and return the time taken to execute that code.
#
# You may use Time.now to get the current time.

def exec_time(proc)
  # your code here
  measure_start = Time.now
  proc.call
  measure_end = Time.now - measure_start
end
