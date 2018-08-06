class User < ApplicationRecord
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: {message: "Rentrez une adresse email valide de moins de 255 caractères."}, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX, message: "Format d'email invalide" },
                    uniqueness: { case_sensitive: false, message: "L'email est déjà pris" }

  validates :first_name, presence: {message: "Rentrez votre prénom"}
  validates :last_name, presence: {message: "Rentrez votre nom"}

  has_secure_password validations: false
  validates :password, presence: true,
                       confirmation: {message: "Les mots de passe ne correspondent pas"},
                       length: { in: 6..40, message: "Rentrez un mot de passe entre 6 et 40 caractères" }
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end                    
end
