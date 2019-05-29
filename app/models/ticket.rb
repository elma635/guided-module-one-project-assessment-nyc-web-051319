class Ticket < ActiveRecord::Base
  belongs_to :broadway_show
  belongs_to :customer
