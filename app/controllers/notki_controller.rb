class NotkiController < ApplicationController
  # GET /notki
  # GET /notki.xml
  def index
    @notki = Notka.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notki }
    end
  end

  # GET /notki/1
  # GET /notki/1.xml
  def show
    @notka = Notka.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @notka }
    end
  end

  # GET /notki/new
  # GET /notki/new.xml
  def new
    @notka = Notka.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @notka }
    end
  end

  # GET /notki/1/edit
  def edit
    @notka = Notka.find(params[:id])
  end

  # POST /notki
  # POST /notki.xml
  def create
    @notka = Notka.new(params[:notka])

    respond_to do |format|
      if @notka.save
        flash[:notice] = 'Notka została utworzona.'
        format.html { redirect_to(@notka) }
        format.xml  { render :xml => @notka, :status => :created, :location => @notka }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @notka.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /notki/1
  # PUT /notki/1.xml
  def update
    @notka = Notka.find(params[:id])

    respond_to do |format|
      if @notka.update_attributes(params[:notka])
        flash[:notice] = 'Notka została zmieniona.'
        format.html { redirect_to(@notka) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @notka.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /notki/1
  # DELETE /notki/1.xml
  def destroy
    @notka = Notka.find(params[:id])
    @notka.destroy

    respond_to do |format|
      format.html { redirect_to(notki_url) }
      format.xml  { head :ok }
    end
  end
end
