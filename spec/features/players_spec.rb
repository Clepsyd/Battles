feature 'Players name' do
  scenario 'Can expect players to fill in their names' do
    visit('/')
    fill_in('Player_1_name', with: 'Mario')
    fill_in('Player_2_name', with: 'Guillaume')
    click("Submit")
    expect(page).to have_content "Mario vs. Guillaume"
  end
end