module PhoneNumbersHelper
  def print_numbers(phone_numbers)
    result  ="<ul>"
    phone_numbers.collect{|x| x.number }.each  do |number|
      result += content_tag :li, number  
    end
    result +=  "</ul>"
    result.html_safe
  end
end
