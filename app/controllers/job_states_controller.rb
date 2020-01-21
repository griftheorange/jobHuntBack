class JobStatesController < ApplicationController
    def index 
        @jobstates = JobState.all 
        render json: @jobstates
    end   
end
