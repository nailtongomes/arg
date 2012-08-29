# == Schema Information
#
# Table name: facts
#
#  id         :integer         not null, primary key
#  content    :text
#  problem    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  active     :boolean         default(FALSE)
#  user_id    :integer
#

class Fact < ActiveRecord::Base
  attr_accessible :content, :problem, :user_id, :active, :orientation, :ini_term, :fin_term, :ini_term_date, :ini_term_time, :fin_term_date, :fin_term_time 

  attr_accessor :ini_term_date, :ini_term_time, :fin_term_date, :fin_term_time     

  validates :content, presence: true
  validates :problem, presence: true
#  validates_format_of :ini_term_time, :with => /\d{1,2}:\d{2}/
#  validates_format_of :fin_term_time, :with => /\d{1,2}:\d{2}/
#  validates :ini_term_date, :presence => { :message => "deve ser uma data valida" }
#  validates :fin_term_date, :presence => {:message => "deve ser uma data valida"}
#  validate :ini_must_be_before_fin_date

  scope :active, where(active: true)
  scope :unactive, where(active: false)
  default_scope order: 'facts.created_at DESC'
  
  # add some callbacks
  after_initialize :get_datetimes # convert db format to accessors
  before_validation :set_datetimes # convert accessors back to db format

  def ini_must_be_before_fin_date
    errors.add(:ini_term_date, "deve ser anterior a data de termo") unless
       self.ini_term_date < self.fin_term_date
  end 

  def get_datetimes
    self.ini_term ||= Time.now  # if the published_at time is not set, set it to now
    self.fin_term ||= Time.now  # if the published_at time is not set, set it to now

    self.ini_term_date ||= self.ini_term.strftime("%d-%m-%Y") # extract the date is yyyy-mm-dd format
    self.ini_term_time ||= "#{'%02d' % self.ini_term.hour}:#{'%02d' % self.ini_term.min}" # extract the time
    
    self.fin_term_date ||= self.fin_term.strftime("%d-%m-%Y") # extract the date is yyyy-mm-dd format
    self.fin_term_time ||= "#{'%02d' % self.fin_term.hour}:#{'%02d' % self.fin_term.min}" # extract the time
  end

  def set_datetimes
    self.ini_term = "#{self.ini_term_date} #{self.ini_term_time}:00" # convert the two fields back to db
    self.fin_term = "#{self.fin_term_date} #{self.fin_term_time}:00" # convert the two fields back to db
  end  
  
end
