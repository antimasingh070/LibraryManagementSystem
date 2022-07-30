class UsersController < ApplicationController
    def my_profile
        @user = current_user
        #@issued_books = current_user.books
    end
end
