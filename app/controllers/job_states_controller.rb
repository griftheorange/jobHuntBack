class JobStatesController < ApplicationController
    def index
        @job_states = JobState.all
        render json: @job_states
    end

    def show
        @job = Job.find_by(id: params[:id])
        render json: @job
    end
end
