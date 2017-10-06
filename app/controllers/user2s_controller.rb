class User2sController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_user2, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :user2

  # GET /user2s
  def index
    @q = @user2s.search params[:q]
    @user2s = @q.result.page(params[:page])
  end

  # GET /user2s/1
  def show
  end

  # GET /user2s/new
  def new
  end

  # GET /user2s/1/edit
  def edit
  end

  # POST /user2s
  def create
    respond_to do |format|
      if @user2.save
        format.html { redirect_to @user2, notice: t('success_create') }
        format.json { render :show, status: :created, location: @user2 }
      else
        format.html { render :new }
        format.json { render json: @user2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user2s/1
  def update
    respond_to do |format|
      if @user2.update(user2_params)
        format.html { redirect_to @user2, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @user2 }
      else
        format.html { render :edit }
        format.json { render json: @user2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user2s/1
  def destroy
    @user2.destroy
    respond_to do |format|
      format.html { redirect_to user2s_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def user2_params
    params.require(:user2).permit(:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :failed_attempts, :unlock_token, :locked_at, :name, :role_id)
  end
end
