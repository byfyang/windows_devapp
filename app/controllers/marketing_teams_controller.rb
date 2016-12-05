class MarketingTeamsController < ApplicationController
  before_action :set_marketing_team, only: [:show, :edit, :update, :destroy]

  # GET /marketing_teams
  # GET /marketing_teams.json
  def index
    @marketing_teams = MarketingTeam.all
  end

  # GET /marketing_teams/1
  # GET /marketing_teams/1.json
  def show
  end

  # GET /marketing_teams/new
  def new
    @marketing_team = MarketingTeam.new
  end

  # GET /marketing_teams/1/edit
  def edit
  end

  # POST /marketing_teams
  # POST /marketing_teams.json
  def create
    @marketing_team = MarketingTeam.new(marketing_team_params)

    respond_to do |format|
      if @marketing_team.save
        format.html { redirect_to @marketing_team, notice: 'Marketing team was successfully created.' }
        format.json { render :show, status: :created, location: @marketing_team }
      else
        format.html { render :new }
        format.json { render json: @marketing_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marketing_teams/1
  # PATCH/PUT /marketing_teams/1.json
  def update
    respond_to do |format|
      if @marketing_team.update(marketing_team_params)
        format.html { redirect_to @marketing_team, notice: 'Marketing team was successfully updated.' }
        format.json { render :show, status: :ok, location: @marketing_team }
      else
        format.html { render :edit }
        format.json { render json: @marketing_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketing_teams/1
  # DELETE /marketing_teams/1.json
  def destroy
    @marketing_team.destroy
    respond_to do |format|
      format.html { redirect_to marketing_teams_url, notice: 'Marketing team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marketing_team
      @marketing_team = MarketingTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marketing_team_params
      params.require(:marketing_team).permit(:name, :coolness)
    end
end
