class Job < ActiveRecord::Base
  has_many :cvs
  mount_uploader :logo, CompanyLogoUploader

  def self.search(search_query)
    if search_query
      self.where("title LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
    else
      self.order(created_at: :desc)
    end
  end
end
