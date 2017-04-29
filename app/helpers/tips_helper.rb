module TipsHelper

  def tip_of_the_day
    Tip.all.sample
  end

end
