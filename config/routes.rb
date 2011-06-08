WebcollectorApp::Application.routes.draw do
  devise_for :users do
    get '/' => 'devise/sessions#new'
    get '/user' => 'users#show'
  end
  resources :folders
end
