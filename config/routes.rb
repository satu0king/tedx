Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/admin' , to: "admin#show"
  get '/admin/timeout' , to: "admin#timeout"
  get '/admin/start' , to: "admin#start"
  get '/admin/resume' , to: "admin#resume"
  get '/admin/pause' , to: "admin#pause"
  get '/admin/reset' , to: "admin#reset"
  get 'groups/:id/assignments/WYSIWYG/index.css', to: redirect('/index.css')
end
