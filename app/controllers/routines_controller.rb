class RoutinesController < ApplicationController
  def index
    routines = Routine.where(author_id: params[:author_id])
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
    routine = Routine.all
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