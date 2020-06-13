
function CalculateBuckDelay(beefalo, le_tamed)
  local domestication = le_tamed

  local moodmult = is_beefalo_in_mood(beefalo)
      and TUNING.BEEFALO_BUCK_TIME_MOOD_MULT
      or 1;

  local beardmult = is_beefalo_shaved(beefalo)
      and TUNING.BEEFALO_BUCK_TIME_NUDE_MULT
      or 1;

  local domesticmult = is_beefalo_domesticated(beefalo)
      and 1
      or TUNING.BEEFALO_BUCK_TIME_UNDOMESTICATED_MULT;

  local basedelay = Remap(domestication, 0, 1, TUNING.BEEFALO_MIN_BUCK_TIME, TUNING.BEEFALO_MAX_BUCK_TIME)
  return basedelay * moodmult * beardmult * domesticmult
end

beefalo_state = {
  mood = false;
  shaved = false;
  domesticated = false;
}


function reset_state(beefalo)
  local state = {
    mood = false;
    shaved = false;
    domesticated = false;
  }
  beefalo_state = state
end


function change_mood(beefalo)
  beefalo_state["mood"] = not beefalo_state["mood"]
end


function is_beefalo_in_mood(beefalo)
  return beefalo_state["mood"]
end

function is_beefalo_shaved(beefalo)
  return beefalo_state["shaved"]
end

function is_beefalo_domesticated(beefalo)
  return beefalo_state["domesticated"]
end

function Remap(i, a, b, x, y)
  local v = (((i - a)/(b - a)) * (y - x)) + x
  -- local i = (v -x)/(y-x)*(b-a)+a
  return v
end

function r_Remap(v, a, b, x, y)
  -- v = (((i - a)/(b - a)) * (y - x)) + x
  local i = (v -x)/(y-x)*(b-a)+a
  return i
end

TUNING = {
        BEEFALO_HAIR_GROWTH_DAYS = 3,
        BEEFALO_SADDLEABLE_OBEDIENCE = 0.1,
        BEEFALO_KEEP_SADDLE_OBEDIENCE = 0.4,
        BEEFALO_MIN_BUCK_OBEDIENCE = 0.5,
        BEEFALO_MIN_BUCK_TIME = 50,
        BEEFALO_MAX_BUCK_TIME = 800,
        BEEFALO_BUCK_TIME_VARIANCE = 3,
        BEEFALO_MIN_DOMESTICATED_OBEDIENCE =
        {
            DEFAULT = 0.8,
            ORNERY = 0.45,
            RIDER = 0.95,
            PUDGY = 0.6,
        },
        BEEFALO_BUCK_TIME_MOOD_MULT = 0.2,
        BEEFALO_BUCK_TIME_UNDOMESTICATED_MULT = 0.3,
        BEEFALO_BUCK_TIME_NUDE_MULT = 0.2,

        BEEFALO_BEG_HUNGER_PERCENT = 0.45,
}

function guess_tamed_by_buckdelay(beefalo, timeout)
  local le_buckdelay = timeout

  local moodmult = is_beefalo_in_mood(beefalo)
      and TUNING.BEEFALO_BUCK_TIME_MOOD_MULT
      or 1;

  local beardmult = is_beefalo_shaved(beefalo)
      and TUNING.BEEFALO_BUCK_TIME_NUDE_MULT
      or 1;

  local domesticmult = is_beefalo_domesticated(beefalo)
      and 1
      or TUNING.BEEFALO_BUCK_TIME_UNDOMESTICATED_MULT;

  local basedelay = le_buckdelay / (moodmult * beardmult * domesticmult)
  local le_tamed = r_Remap(basedelay, 0, 1, TUNING.BEEFALO_MIN_BUCK_TIME, TUNING.BEEFALO_MAX_BUCK_TIME)

  return le_tamed
end


for i=0,1000 do
  local delay = i/100
  reset_state(beefalo)
  -- change_mood(beefalo)
  local le_tamed = guess_tamed_by_buckdelay(beefalo, delay)
  -- change_mood(beefalo)
  local delay2 = CalculateBuckDelay(beefalo, le_tamed)

print(delay, le_tamed, delay2)

end
