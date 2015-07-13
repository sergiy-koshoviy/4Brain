class Sport < ActiveRecord::Base

  has_many :athlete_categories

  validates :name, presence: true, uniqueness: true
  validates :uid, presence: true, uniqueness: true

  before_create :do_before_create

  def to_param
    uid
  end

  def do_before_create
    make_uid
  end

  def make_uid
    self.uid = self.name.parameterize
  end
end
