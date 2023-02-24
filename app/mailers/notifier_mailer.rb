class NotifierMailer < ApplicationMailer
    def purchase_complete(user,cart)
        @user = user
        @cart=cart
        mail(:to => (user), :subject => "Your order has been processed!")
    end
end
