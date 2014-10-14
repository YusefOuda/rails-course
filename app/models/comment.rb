class Comment < ActiveRecord::Base
  belongs_to :video
  belongs_to :commentable, :polymorphic => true
end
