module FormHelper
  def setup_classmate(classmate)
    classmate.addresses ||= Address.new
    classmate.addresses.build
    classmate.phones ||= Phone.new
    classmate.phones.build
    classmate.emails ||= Email.new
    classmate.emails.build
    classmate
  end
end
