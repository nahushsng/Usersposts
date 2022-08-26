class EventUsersController < ApplicationController
    def create
        @user = current_user
        event_id = params[:event_id]
        @user.events << Event.find(params[:event_id])
        else
            redirect_to events_path 
        end      
    end

end
