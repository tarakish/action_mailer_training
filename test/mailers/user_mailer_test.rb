require "test_helper"
class UserMailerTest < ActionMailer::TestCase
  test 'welcome' do
    email = UserMailer.with(to: 'igarashi@example.com', name: 'igarashi').welcome
    assert_emails(1){ email.deliver_now } # メールが送信キューに追加されるかどうか
    assert_equal ['perfect_rails@example.com'], email.from
    assert_equal ['igarashi@example.com'], mail.to
    assert_equal '登録完了', email.subject
    assetr_includes email.text_part.decoded, 'igarashi'
    assetr_includes email.html_pard.decoded, 'igarashi'
  end
end
