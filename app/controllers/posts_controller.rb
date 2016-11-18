class PostsController < ApplicationController


	layout 'banda_publico'

	def index
		@posts = Post.all.asc(:titulo)
	end


	def new
		
	end


	def create

		Post.create(:titulo=>params['titulo'])
		flash[:notice] = "post criado!"
		redirect_to posts_path
		
	end


	def destroy
		Post.find(params['id']).destroy!
		flash[:notice] = "post apagado!"
		redirect_to posts_path
	end



	def show
		@post = Post.find params['id']
	end


	def edit
		@post = Post.find params['id']
	end



	def update
		
		post = Post.find params['id']
		post.titulo = params['titulo']
		post.save!

		flash[:notice] = "post atualizado!"
		redirect_to posts_path

	end

end

