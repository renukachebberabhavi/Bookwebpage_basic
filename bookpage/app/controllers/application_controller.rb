class ApplicationController < ActionController::Base
    def landingpage
        render html: "Welcome to Book web page"
    end
end
