WebcollectorApp::Application.routes.draw do
  devise_for :users do
    get '/' => 'devise/sessions#new'
  end
  resources :folders
  resources :user
end
