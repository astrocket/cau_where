class Comment < ApplicationRecord
  validate :data_format

  belongs_to :commentable, polymorphic: true

  def data_format
    format = [self.name, self.content]
    if format.any? { |value| value.blank? }
      errors.add(:error, '이름과 댓글을 모두 입력해야 합니다.')
    end
  end
end
