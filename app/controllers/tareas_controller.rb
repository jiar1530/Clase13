class TareasController < ApplicationController

   before_action :set_tarea, only: [:show, :edit, :update, :destroy]


	def index
		@tareas = Tarea.all
		#select * from tareas
	end

	def show
	
		#select * from tareas where id=:id
	end

	def new
		@tarea = Tarea.new
	end

	def create
		@tarea = Tarea.new(
			titulo: params[:tarea][:titulo], 
			descripcion: params[:tarea][:descripcion])
		@tarea.save						
		#insert into tareas(titulo,descripcion) values('','')
		#redirect_to controller: "tareas", action: "show", id: @tarea.id
		redirect_to tarea
	end

	def edit
	
	end

	

	def update
	
		if @tarea.update(titulo: params[:tarea][:titulo], descripcion:params[:tarea][:descripcion] )

		redirect_to controller: "tareas", action: "show"
		#redirect_to tarea

	else
		
	render "edit"

    end
end
def destroy
   
    @tarea.destroy 
	
	#redirect_to controller: "tareas", action: "index"
	redirect_to tarea
end
	
private

def set_tarea
	@tarea = Tarea.find(params[:id])

end

end
