require "rails helper"

RSpec.feature "Logout", :type => feature do
  let(:user) { create(:user) }

  scenario 'user click on drop down in nav bar and successfully logs out', js: true do
    user
    visit root_path
    find('nav #user-settings').click
    # Once you clicked on nav, you are in nav a (LINKS are a, 是吗？）
    # 然后找这些信叫"Log Out"，好像怎么在网站看的
    find('nav a', text:'Log Out').click
    expect(page).to have_selector('nav a', text: 'Login')
    # On the line above, you could find any element that is not present on log out
  end
end