class ToofanController < ApplicationController

	def new
	end

	def insert
		# @username=params[:username]
		# @password=params[:password]
		# @s=Toofan.new
		# @s.username=@username
		# @s.password=@password
		# if @s.save
		# 	render "new"

		# end
	end

	def show
		@s=Toofan.all		
	end


	def delete
		@id=params[:id]
		@s=Toofan.find(@id)
		if @s.destroy
			@msg="user gets deleted"
		
		# @s=Toofan.all

			redirect_to :action=>"show"
		end		
	end

	def update
		@id=params[:id] 		
	end

	def insert2
		@id=params[@id]
		@s=Toofan.find(@id)
		@s.username=params[:username]
		@s.password=params[:password]
		if @s.update
			redirect_to :action=>"show"
		end
	end


end
