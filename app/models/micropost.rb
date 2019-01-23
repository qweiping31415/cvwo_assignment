class Micropost < ApplicationRecord
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings, :dependent => :delete_all
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140 }
  attr_accessor :tag_list



  def self.tagged_with(name)
    Tag.find_by!(name: name).microposts
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count')
    .joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end