module Api
    module V1
        class ReportsController < ApplicationController
            # skip_before_action :verify_authenticity_token

            def index
                @reports = Report.all
                render json: @reports
            end
        
            def create 
                @report = Report.new(report_params)
        
                if @report.save
                    render json: @report
                else
                    render json: @report.errors, status: unprocessable_entity
                end
            end
        
            def show
                @report = Report.find(params[:id])
                render json: @report
            end 
        
            def destroy
                @report = Report.find(params[:id])
        
                if @report.present?
                    @report.destroy
                    render json: @report
                else
                    render json: {error: 'Report not found'}
                end
            end
        
            def update
                @report = Report.find(params[:id])
                
                if @report.update(report_params)
                    render json: @report
                else
                    render json: @report.errors, status: unprocessable_entity
                end
            end
        
            private
        
            def report_params
                params.require(:report).permit(:personal_identitty,:name,:insident,:location,:status)
            end
        
        end

    end
end