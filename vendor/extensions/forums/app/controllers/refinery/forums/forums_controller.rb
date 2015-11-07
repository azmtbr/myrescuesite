module Refinery
  module Forums
    class ForumsController < ::ApplicationController

      before_action :find_all_forums
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @forum in the line below:
        present(@forum)
        @posts = Post.all
      end

      def show
        @post = Post.find(params[:id])
      end

      def new
        @post = Post.new
      end

      def create
        @post = Post.new
        @post.title = params[:post][:title]
        @post.body = params[:post][:body]

        if @post.save
          flash[:notice] = "Post was saved."
          redirect_to @post
        else
          flash[:error] = "There was an error saving the post. Please try again."
          render :new
        end
      end

      def edit
      end

    protected

      def find_all_forums
        @forums = Forum.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/forums").first
      end

    end
  end
end
