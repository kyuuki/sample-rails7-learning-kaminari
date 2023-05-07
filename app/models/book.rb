class Book < ApplicationRecord
  # https://railsguides.jp/active_record_validations.html

  validates :title, presence: true, length: { maximum: 40 }

  # nil も空文字も入る可能性がある (フォーム経由の場合は実質 nil は入らない)
  validates :author, length: { maximum: 20 }

  # 西暦 0 年は存在しない
  validates :publication_year, comparison: { other_than: 0 }, allow_nil: true
end
