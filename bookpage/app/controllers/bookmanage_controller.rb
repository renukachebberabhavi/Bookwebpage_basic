class BookmanageController < ApplicationController
    skip_before_action :verify_authenticity_token
    

    def index
        render json: Bookmanage.all
        # current_user = Bookmanage.find_by_id(session[:current_user_id])
        # render json: current_user
    end
    
    def show 
        v = Bookmanage.find(params[:id])
        render json: v
    end
    def create
        v = !params[:bookName].empty? and !params[:bookAuthor].empty?

        if (v)
              p=Bookmanage.create(
              'bookName': params[:bookName],
              'bookAuthor': params[:bookAuthor],
              'bookQuantity': params[:bookQuantity]
            )
              puts p
              render json: "Data Added"
            else
                 render json: "Data not added"
        end
           
    end
    def update
        p = Bookmanage.find(params[:id].to_i)
            p.update('bookName': params[:bookName],
                'bookAuthor': params[:bookAuthor],
                'bookQuantity': params[:bookQuantity],
                
                )
            render json: "Data Updated"
    end
    def destroy 
        p = Bookmanage.find(params[:id])
        p.destroy
        render json: "Data Deleted"
    end

end
