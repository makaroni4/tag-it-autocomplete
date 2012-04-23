class Submit < ActiveRecord::Base
  
  attr_accessor :tag_names
  attr_accessible :tag_names
  has_and_belongs_to_many :tags
  
  validates :tag_names, :presence => true
  after_create :assign_tags
  
  default_scope :order => 'created_at DESC'
  
  protected
  def assign_tags
    names = tag_names.split(',')
    tags << names.map { |name| Tag.find_or_create_by_name(name) } 
  end
end