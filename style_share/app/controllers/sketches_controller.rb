class SketchesController < ApplicationController
    before_action :authenticate

    def show
        @sketches = Sketch.order(created_at: :asc).last(3)
    end

    private

    def authenticate
        redirect_to login_path unless session[:username]
    end

end
