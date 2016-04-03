class AppController < Sinatra::Base

  configure do
    set :views, 'lib/views'
    enable :sessions
    set :session_secret, "anhthing you want"
    # set :public_folder, 'public'
  end

  get '/' do
    erb :'/app/index.html'
  end

  get '/index.html' do
    redirect to('/')
  end

  get '/about.html' do
    erb :'/app/about.html'
  end

end
