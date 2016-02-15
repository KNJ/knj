application = 'example.com'

worker_processes 2
working_directory "/var/www/#{application}"

listen "/var/run/unicorn/unicorn_#{application}.sock"

pid "/var/run/unicorn/unicorn_#{application}.pid"

timeout 60

preload_app true

stdout_path "/var/www/#{application}/log/unicorn.stdout.log"
stderr_path "/var/www/#{application}/log/unicorn.stderr.log"

GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly = true
before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && old_pid != server.pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill(sig, File.read(old_pid).to_i)
    rescure Errno::ENOENT, Errno::ESRCH
    end
  end

  sleep 1
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
