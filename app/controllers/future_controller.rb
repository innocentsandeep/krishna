class FutureController < ApplicationController
  
  def show
    @student=Student.new

  end

  def insert
    @student=Student.new(params[:student])
    if @student.save
      @msg="student gets saved"
    end

  end

  def user_params
    
  end


  def showdetails
    @student=Student.all

  end
    
 

  def update
    # @id=params[:id]
    # @userall=Student.all
    # @user=Student.find(@id)
    # if @user.destroy
    # # @user=Student.find_by(@id)
    # # if @user.destroy
    #   @msg="user gets destroyed"
    #   render update

  
    end






  def delete

  end
end



