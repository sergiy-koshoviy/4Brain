class AddWeightliftingDateToAthleteCategory < ActiveRecord::Migration
  def change
    sport = Sport.find_by_name('weightlifting')
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('3 junior', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('2 junior', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('1 junior', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('3 senior', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('2 senior', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('1 senior', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('Candidate Master of Sports', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('Master of Sports', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
    AthleteCategory.connection.execute(
      "INSERT INTO athlete_categories (name, sport_id, created_at, updated_at) VALUES ('International Master of Sports', #{sport.id}, DATE(NOW()), DATE(NOW()))"
    )
  end
end
