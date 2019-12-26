class RoutinesController < ApplicationController
    skip_before_action :verify_authenticity_token

  def index
    if params[:user_id]
        routines = Routine.where(author_id: params[:user_id])
    else
        routines = Routine.all
    end
    render json: routines
  end

  def create
    routine = Routine.new(routine_params)
    if routine.save
      render json: routine, status: :created
    else
      render json: routine.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    if params[:id]
        routine = Routine.where(id: params[:id])
    else
        routine = Routine.where(author_id: params[:id])
    end
    render json: routine
  end

  def destroy
    routine = Routine.find(params[:id])
    routine.destroy!
    render json: routine
  end

  def update
    routine = Routine.find(params[:id])
    if routine.update(routine_params)
      render json: routine
    else
      render json: routine.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def routine_params
    params.require(:routine).permit(:author_id, :title, :shelfie_url)
  end
end