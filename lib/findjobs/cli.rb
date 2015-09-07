module Findjobs
  class Cli
    include Commander::Methods

    def run
      program :name, 'findjobs'
      program :version, Findjobs::VERSION
      program :description, 'Simple CLI to help you find your next job.'

      command :find do |c|
        c.syntax = 'findjobs [term]'
        c.description = 'Find jobs by specific term (i.e "ruby")'
        c.option '--location STRING', String, 'Specify a location'
        c.option '--days INTEGER', Integer, 'Limit an amount of days in results'
        c.action do |args, options|
          options.default(Findjobs::Finder.default_options)
          results =
            Findjobs::Finder
            .new(args[0], location: options.location, days: options.days)
            .by_date

          if results.any?
            results.each { |d, j| print_date(d, j) }
          else
            say %(No "#{args[0]}" jobs found.)
          end
        end
      end

      default_command :find

      run!
    end

    private

    def print_date(date, jobs)
      say human_date(date).green.underline
      say "\n"
      jobs.each do |job|
        say job.title.light_white
        say job.url
        say "\n"
      end
    end

    def human_date(date)
      case date
      when Date.today then 'Today'
      when Date.today - 1 then 'Yesterday'
      else date.strftime('%b %m, %Y')
      end
    end
  end
end
