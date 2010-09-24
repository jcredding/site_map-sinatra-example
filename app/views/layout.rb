module TestSinatra
  class Application
    module Views

      class Layout < Mustache

        def title
          @title || 'Sinatra Test Application'
        end

      end

    end
  end
end
