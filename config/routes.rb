WebcollectorApp::Application.routes.draw do
  devise_for :users do
    get '/' => 'devise/sessions#new'
    get '/user' => 'folders#index'
  end
  resources :folders
end
