class BlogController < ApplicationController

	def index 
		@blogs = BlogSimple.all
	end

	def show
		@blog = BlogSimple.find(params[:id])
		redirect_to blog_index_path unless @blog.present?
	end

end
