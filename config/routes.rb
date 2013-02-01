BigosEventsBox::Engine.routes.draw do

  namespace :admin do
    resources :events, :event_options
  end
  resources :events

end
