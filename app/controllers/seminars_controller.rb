class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @seminars = Seminar.all
    respond_with(@seminars)
  end

  def show
    respond_with(@seminar)
  end

  def new
    @seminar = Seminar.new
    respond_with(@seminar)
  end

  def edit
  end

  def create
    @seminar = Seminar.new(seminar_params)
    @seminar.save
    respond_with(@seminar)
  end

  def update
    @seminar.update(seminar_params)
    respond_with(@seminar)
  end

  def destroy
    @seminar.destroy
    respond_with(@seminar)
  end

  private
    def set_seminar
      @seminar = Seminar.find(params[:id])
    end

    def seminar_params
      params.require(:seminar).permit(:user_id, :headline, :subline, :description, :duration, :slot, :confirmed, :category, :accepted, :confirmed, :track, :date)
    end
end