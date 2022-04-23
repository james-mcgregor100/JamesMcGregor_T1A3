require 'tty-progressbar'
bar = TTY::ProgressBar.new("Loading [:bar]", total: 30)

30.times do
    sleep(0.05)
    bar.advance(1)
end 


