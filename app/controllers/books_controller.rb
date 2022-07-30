class BooksController < ApplicationController
    def search
      if params[:book].nil?
        @books = Book.all.order(created_at: :desc)
        if @book
          render 'users/my_profile' 
        else
          flash[:alert] = "Please enter valid book title to search"
          redirect_to my_profile_path
        end
      else
        flash[:alert] = "Please enter a book title"
        redirect_to my_profile_path
      end
  end
end
