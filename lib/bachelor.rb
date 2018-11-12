def get_first_name_of_season_winner(data, season)
  data.each do |season_num, cont_array|
    if season_num == season
      cont_array.each do |cont_hash|
        if cont_hash.fetch("status") == "Winner"
          return cont_hash.fetch("name").split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, cont_array|
    cont_array.each do |cont_hash|
      if cont_hash.fetch("occupation") == occupation
        return cont_hash.fetch("name")
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_num, cont_array|
    cont_array.each do |cont_hash|
      if cont_hash.fetch("hometown") == hometown
        counter += 1 
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
