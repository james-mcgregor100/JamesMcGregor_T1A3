require 'tty-spinner'

spinner = TTY::Spinner.new("[:spinner] Taking you to the next page ...", format: :pulse_2)

spinner.auto_spin

sleep(5)