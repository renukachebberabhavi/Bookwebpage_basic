class BooksearchController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render html: "Search book by author"
    end

    def create
        #Search by book Author,

        # usr = Bookmanage.find_by('bookAuthor': params[:bookAuthor])
        # if (usr.nil?)
        #     render json: "book exist"
        #     # render json: usr
        # else 
        #     usr = Bookmanage.find_by('bookName': params[:bookName])
        #     if (usr.nil?)
        #         # render json: "book exist"
        #         render json: usr
        #     else    
        #     render json: "book does not exist"

        #     end
           
        # end
        # bk = Bookmanage.where('bookAuthor': params[:bookAuthor])
        bk = Bookmanage.find_by('bookAuthor': params[:bookAuthor])
        if(bk.nil?)
            render json: "Book does not exit"
        else
            render json: bk
            
        end
    end
end
