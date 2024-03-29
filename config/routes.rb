Rails.application.routes.draw do
  resources :seminars

  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  root to: "static#index"

  get '/dashboard' => 'dashboard#index'
  get '/registrations' => 'records#registrations'
  get '/proposals_csv' => 'seminars#show_csv'
  get '/users_csv' => 'records#show_csv'

  post '/make_admin/:id' => 'records#make_admin'
  post '/remove_admin/:id' => 'records#remove_admin'
  get '/cfp' => 'static#cfp'
  get '/help' => 'static#help'
  get '/team' => 'static#team'
  get '/about' => 'static#about'
  get '/venue' => 'static#venue'
  get '/news' => 'static#news'
  get '/travel' => 'static#travel'
end
