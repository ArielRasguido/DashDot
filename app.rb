require 'sinatra'

get '/' do
    erb:bienvenida
  end

  post '/configurar' do
    erb :configurar
  end

  post '/jugar' do
    erb :jugar
  end