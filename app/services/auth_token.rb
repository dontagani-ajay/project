class AuthToken
    #encode method
    def self.encode(payload)
        payload["expiry_time"] = 24.hours.from_now.to_i
        secret_key = Rails.appilication.secrets.secrect_key
        JWT.encode(payload, secrect_key)
    end

    #decode method
    def self.decode(token, leeway:nil)
        secrect_key = Rails.appilication.secrets.secrect_key
        decoded_data = JWT.decode(token,secrect_key,leeway:leeway)
        HashWithIndifferentAccess.new(decoded_data[0])
    end
end


