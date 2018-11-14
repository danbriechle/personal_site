require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'
    # save_and_open_page
    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_sees_error_for_non_existent_page
    visit '/savings_acount'
    # save_and_open_page
    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code

  end

  def test_user_can_see_the_about_page
    visit '/about'
    assert page.has_content?("About")
    assert_equal 200, page.status_code
  end
end
