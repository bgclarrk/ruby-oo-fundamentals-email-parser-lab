
require 'pry'

class EmailAddressParser

    def initialize(email)
        @emails = email
    end

    def parse
        if @emails.match?(/., /) && @emails.match?(/\w \w/)
            @emails = @emails.delete(",").split(" ").uniq
        elsif @emails.match?(/., /)
            @emails = @emails.split(", ").uniq
        else
            @emails = @emails.split(" ").uniq
        end
        @emails.uniq
    end

end