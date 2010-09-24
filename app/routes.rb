module TestSinatra
  class Application

    # Home Page
    get '/' do
      'Sinatra test app home page'
    end

    get '/sitemap*' do
      case(params[:splat].first)
      when 'xml'
        #SiteMap.to_xml
      else #html or blank
        #SiteMap.to_html
      end
    end

    # Godzilla Page
    get '/godzilla' do

    end

    get '/godzilla/about' do

    end

    get '/godzilla/monsters' do

    end

    get '/godzilla/movies' do

    end

    get '/godzilla/monsters/:name' do

    end

  end
end
