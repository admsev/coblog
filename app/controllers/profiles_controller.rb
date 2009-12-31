class ProfilesController < ApplicationController
  before_filter :authenticate_user!, :only=>[:show, :edit, :update]

  # GET /profile
  def show
  end

  # GET /profile/edit
  def edit
    current_user = current_user
  end

  # PUT /profile
  # PUT /profile.xml
  def update
    respond_to do |format|
      if current_user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(:profile) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => current_user.errors, :status => :unprocessable_entity }
      end
    end
  end
end

