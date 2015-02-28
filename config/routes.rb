Rails.application.routes.draw do
  # mount Upmin::Engine => '/admin'

  namespace :dashboards, :path => '/' do
    root to: 'home_dashboard#index', :as => :home
  end

  # root to: 'visitors#index'

  devise_for :users

  resources :users

  get 'lock_session', :to => 'lock_session#index', :as => :lock_session
  get 'unlock', :to => 'lock_session#unlock', :as => :unlock
end
