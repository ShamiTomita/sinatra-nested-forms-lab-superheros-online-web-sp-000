class Team
  attr_accessor :name, :motto
  @@all=[]

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]

    @@all << self
  end
end
