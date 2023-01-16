class BooksearchbynameController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render html: "search book by name"
    end

    def create
        bk = Bookmanage.find_by('bookName': params[:bookName])
        if(bk.nil?)
            render json: "Book does not exit"
        else
            render json: bk
            
        end
    end
end
