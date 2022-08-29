class AuthenticationController < ApplicationController
    
    #POST /auth/login
    @user = User.find_by_email(params:[:email])
    if @user&.authenticate(params[:password])
        token = JsonWebToken.jwt_encode(user_id: @user.id)
        render json {token: token}, status: ok
    else
        render json {error: "usuario o contraseña invalida"}, status: :unauthorized
    end

end
