class AllowlistedJwt < ApplicationRecord
  belongs_to :user
  validates :jti, presence: true, uniqueness: true
  validates :exp, presence: true

  # before_create :revoke_previous_tokens
  #
  # private

  # def revoke_previous_tokens
  #   self.user.allowlisted_jwts.destroy_all
  # end

end
