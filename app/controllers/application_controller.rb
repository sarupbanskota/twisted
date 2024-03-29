class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  require 'csv'


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [
    																							:first_name, 
    																							:family_name,
    																							:project,
    																							:webpage,
    																							:bio,
    																							:meal_restriction,
    																							:shirt_size,
    																							:length_of_stay,
    																							:sponsoring_needed,
                                                                                                :sponsorship_amount,
    																							:arrival_date,
    																							:arrival_flight_number,
    																							:arrival_time,
                                                                                                :avatar, 
                                                                                                :avatar_cache
    																						 ]

    devise_parameter_sanitizer.for(:account_update) << [
    																							:first_name, 
    																							:family_name,
    																							:project,
    																							:webpage,
    																							:bio,
    																							:meal_restriction,
    																							:shirt_size,
    																							:length_of_stay,
    																							:sponsoring_needed,
                                                                                                :sponsorship_amount,
    																							:arrival_date,
    																							:arrival_flight_number,
    																							:arrival_time,
                                                                                                :avatar, 
                                                                                                :avatar_cache
    																						 ]



  end

end
