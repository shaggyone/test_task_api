class Post < ActiveRecord::Base

  belongs_to :user

  validates :title, :body, presence: true

  before_create :set_published_at_if_empty, :set_author

  def author_nickname
    user ? user.nickname : nil
  end

private

  def set_published_at_if_empty
    # Не понимаю, зачем тут транзакция. Внутри неё в базу ничего не пишется.
    ActiveRecord::Base.transaction do
      raise ActiveRecord::Rollback if self.published_at.present?
      self.published_at = Time.now
    end
  end


  def set_author
    ActiveRecord::Base.transaction do
      # Тоже пара моментов.
      # 1. под ссылкой на автора я подразумевал belongs_to :user
      # 2. Лучше использовать конструкцию if self.user.blank?
      #    Т.к. она утрвердительная и однозначно читается.
      # 3. Ну и, тут лучше использовать роуты. Rails.application.routes если не путаю.

      raise ActiveRecord::Rollback unless self.user
      self.author = "/api/v1/profiles/" + self.user.id.to_s
    end
  end



end
