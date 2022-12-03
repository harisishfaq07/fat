class AltEmailsController < ApplicationController
    
    # GET /user all alt emails
    #----------------------------------------------------------------------------
    def view_alt_email
        @emails = current_user.alt_emails.all
    end

    # show method for delete alternative email
    #----------------------------------------------------------------------------
    def show
    end

    # Delete user alternate emails
    #----------------------------------------------------------------------------
    def destroy
        @email = AltEmail.find(params[:id])
        if @email.destroy
            redirect_to view_alt_email_alt_emails_path
        end
    end

end