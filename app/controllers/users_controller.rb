class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'Enregistrement complet !'
      redirect_to root_url
    else
      render :action => "new" 
    end
  end


  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Mise à jour effectuée'
      redirect_to root_url
    else
      render :action => "edit"
    end
  end

  def destroy
      current_user.destroy
      flash[:notice] = 'Compte supprimé avec succès'
      redirect_to root_url
  end

end
