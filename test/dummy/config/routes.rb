Rails.application.routes.draw do

  mount BigosEventsBox::Engine => "/bigos_events_box"
  root :to=>"test#index"

end
