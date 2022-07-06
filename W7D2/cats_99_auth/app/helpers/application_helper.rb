module ApplicationHelper
    # Abstracting the code for form_authenticity_token to use across our views
    def auth_token
        "<input
        type='hidden'
        name='authenticity_token'
        value='#{form_authenticity_token}'/>".html_safe
        # We wrap the input tag in a string and call html_safe
        # Now, we can go through our app and replace all of the
        # form_authenticity_token input fields with calls to this method
    end

end
