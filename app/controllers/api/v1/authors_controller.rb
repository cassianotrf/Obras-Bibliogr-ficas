# frozen_string_literal: true

module Api
  module V1
    class AuthorsController < ApplicationController
      def index
        @authors = Author.all
        render json: @authors
      end

      # GET /authors/1
      def show
        render json: @author
      end

      # POST /authors
      def create
        @authors = Author.new
        @authors.names = @authors.format_names(author_params[:names_total], author_params[:names])

        if @authors.save
          render json: @authors.names, status: :created
        else
          render json: @authors.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /authors/1
      def update
        if @author.update(author_params)
          render json: @author
        else
          render json: @author.errors, status: :unprocessable_entity
        end
      end

      # DELETE /author/1
      def destroy
        @author.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_author
        @author = author.find(params[:id])
      end

      # Only allow a trusted parameter “white list” through.
      def author_params
        params.require(:author).permit(:names_total, names: [])
      end
    end
  end
end
