class Post < ActiveRecord::Base

  belongs_to :user

  validates :title, :body, presence: true

  before_create :set_published_at_if_empty, :set_author

  def author_nickname
    user ? user.nickname : nil
  end

private

  def set_published_at_if_empty
    ActiveRecord::Base.transaction do
      raise ActiveRecord::Rollback if self.published_at.present?
      self.published_at = Time.now
    end
  end


  def set_author
    ActiveRecord::Base.transaction do
      raise ActiveRecord::Rollback unless self.user
      self.author = "/api/v1/profiles/" + self.user.id.to_s
    end
  end



end
