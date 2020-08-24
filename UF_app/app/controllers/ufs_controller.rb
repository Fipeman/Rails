class UfsController < ApplicationController
  def daily
    setting = Setting.first
    setting.request_count += 1
    setting.save
    
    @uf = Uf.find_by(date: params[:date])
    
      if @uf  
      render json: @uf.value, status: 201
      else
      render json: 'error date, please will try with another date', status: 400
      end
   end
  
  def stats
    @stats = Setting.first
    render json: @stats.request_count, status: :ok
  end 
end

# respond_to do |format|
#   if @pet.save
#     format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
#     format.json { render :show, status: :created, location: @pet }
#   else
#     format.html { render :new }
#     format.json { render json: @pet.errors, status: :unprocessable_entity }
#   end

# @uf = Uf.find_by(date: params[:date])
#     render json: @uf.value, status: :ok