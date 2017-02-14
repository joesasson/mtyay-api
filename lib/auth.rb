class Auth

  ALGORITHM = 'HS256'

  def self.encrypt(hash)
    JWT.encode(hash, secret_key, ALGORITHM)
  end

  def self.decode(payload)
    JWT.decode(payload, secret_key, true, {algorithm: ALGORITHM}).first
  end

  def self.secret_key
    "5cc103f156fa436c6f555d7ae38b9b29ff14892b5cdcf2430003da39c8dc27e0e91b0ca36ba10111881e04185a4f009253aa15215a1b70cd89320fa09fc56f2d"
  end

end
