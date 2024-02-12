class SetupController < ApplicationController
  def index
  end

  def personnel_login
    email = params[:email]
    password = params[:password]
    @personnel=Personnel.find_by(email: email)
    if @personnel && @personnel.password == params[:password]
      session[:personnel_id] = @personnel.id # Store personnel's ID in session
      redirect_to transaction_expense_index_url
    else
      @error = "Invalid email or password"
      render 'personnel_login'
    end
  end    

  def personnel_index
    @personnels = Personnel.all
  end

  def personnel_create
    personnel = Personnel.new
    personnel.name = params[:name]
    personnel.email = params[:email]
    personnel.password = params[:password]
    personnel.save  

    redirect_to setup_personnel_index_url
  end

  def personnel_edit
    @personnel = Personnel.find(params[:format])
  end

  def personnel_update
    personnel = Personnel.find(params[:personnel_id])
    personnel.update(name: params[:name], email: params[:email], password: params[:password])
    redirect_to setup_personnel_index_url
  end

  def personnel_destroy
    personnel = Personnel.find(params[:format])
    personnel.destroy
    redirect_to setup_personnel_index_url
  end
end
