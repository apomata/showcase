class ProjectController < ApplicationController
 	def new
 		@project = Project.new
 	end

 	def create
 		@project = Project.new(new_project_params)
 		if @project.save
 			flash[:success] = "your project has been created"
 			#probably redirect to user I imagine thats where projects wil be created from
 		else
 			flash.now[:error] = "<ol><li>#{@project.errors.full_messages.join('</li><li>')}</li></ol>".html_safe

 		end
 	end

 	def edit
 	end

 	def destroy
 	end

 	def display
 	end

 	def new_project_params
 		#will have to add picture upload
 		params.require(:project).permit(:title, :description)
 	end
end
