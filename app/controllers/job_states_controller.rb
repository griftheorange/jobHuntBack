class JobStatesController < ApplicationController
    def index
        @job_states = JobState.all
        render json: @job_states
    end
end
