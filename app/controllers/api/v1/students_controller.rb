module Api
    module V1
        class StudentsController < ApplicationController
            before_action :set_student_by_name, only: [:show_by_name]
            before_action :set_student_by_full_name, only: [:show_by_full_name]
            before_action :set_student_by_academy, only: [:show_by_academy]
            before_action :set_student_by_club, only: [:show_by_club]
            before_action :set_student_by_rarity, only: [:show_by_rarity]
            before_action :set_student_by_attack_type, only: [:show_by_attack_type]

            def index
                students = Student.order(created_at: :desc)
                render json: { status: 'SUCCESS', message: 'Loaded the student data', data: students }
            end

            def show_by_name
                render json: { status: 'SUCCESS', message: 'Loaded the student data', data: @student }
            end

            def show_by_full_name
                render json: { status: 'SUCCESS', message: 'Loaded the student data', data: @student_by_full_name }
            end
            

            def show_by_academy
                render json: { status: 'SUCCESS', message: 'Loaded the student data', data: @student_by_academy }
            end
            
            def show_by_club
                render json: { status: 'SUCCESS', message: 'Loaded the student data', data: @student_by_club }
            end

            def show_by_rarity
                render json: { status: 'SUCCESS', message: 'Loaded the student data', data: @student_by_rarity }
            end

            def show_by_attack_type
                render json: { status: 'SUCCESS', message: 'Loaded the student data', data: @student_by_attack_type }
            end

            def create
                student = Student.new(student_params)
                if student.save
                    render json: { status: 'SUCCESS', data: student }
                else
                    render json: { status: 'ERROR', data: student.errors }
                end
            end

            private
            
            def set_student_by_name
                @student = Student.find_by(name: params[:name])
            end

            def set_student_by_full_name
                @student_by_full_name = Student.where("full_name like ?", "%"+params[:full_name]+"%")
            end

            def set_student_by_academy
                @student_by_academy = Student.where("academy like ?", "%"+params[:academy]+"%")
                # @student_by_academy = Student.find_by(academy: params[:academy])
            end

            def set_student_by_club
                @student_by_club = Student.where("club like ?", "%"+params[:club]+"%")
            end

            def set_student_by_rarity
                @student_by_rarity = Student.where("rarity like ?", "%"+params[:rarity]+"%")
            end

            def set_student_by_attack_type
                @student_by_attack_type = Student.where("attack_type like ?", "%"+params[:attack_type]+"%")
            end

            def student_params
                params.require(:student).permit(:image_url,:name,:full_name,:rarity,:role,:position,:attack_class,:weapon_type,:shelter,:attack_type,:defensive_type,:academy,:club,:age,:birthday,:stature,:hobby,:design,:illustration,:CV,:version)
            end
        end
    end
end
