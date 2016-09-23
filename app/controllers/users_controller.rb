class UsersController < ApplicationController

	def new
		@user=User.new
		# @id=params[:id]
		
	end
	

	def insert
		@id=params[:id]


		@user=User.new(parametersvalidation)

		

		if !@id.nil?
			if 	@user.save
				@msg="user gets saved"
				redirect_to :action=>"showall"
			else
				@errors=@user.errors.full_messages

			end

		else
			if @user.update
				@msg="details gets updated "
				redirect_to :action=>"showall"

			end

		end

		
	end



	def parametersvalidation
		return params.require(:user).permit(:username,:password)
	end

	def showall
		@user=User.all
	end


	def delete
		@id=params[:id]
		@user=User.find(@id)
		if @user.destroy
			@msg="details gets destroyed "
			render "showall"
		else
			@errors=@user.errors.full_messages
			render "showall"

		end

		
	end

	def update
		@id=params[:id]
		render "new"



		
	end


end
