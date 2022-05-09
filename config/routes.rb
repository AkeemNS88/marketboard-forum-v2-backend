Rails.application.routes.draw do
  get '/activate_account',
  to: 'registrations#activate_account',
  as: 'activate_account'
end
