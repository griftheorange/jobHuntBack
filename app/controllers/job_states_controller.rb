class JobStatesController < ApplicationController
    def index
        @job_states = JobState.all
        render json: @job_states
    end

    def create
        @job_state = JobState.create(user_id: params[:user_id], job_id: params[:job_id], status: params[:status])
        render json: @job_state
    end
end
