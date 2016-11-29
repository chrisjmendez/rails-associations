namespace :github do
  desc "›› Commit with message"
  task :commit, [:message] => :environment do |task, args|
    sh %{ git add -A && git commit -m "#{args.message}" && git push }
  end

end
