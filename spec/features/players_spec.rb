feature 'Players' do
  before do
    visit('/')
    fill_in('Player_1_name', with: 'Mario')
    fill_in('Player_2_name', with: 'Guillaume')
    click_on("Submit")
  end

  feature 'names' do
    scenario 'Can expect players to fill in their names' do
      expect(page).to have_content "Mario"
      expect(page).to have_content "vs."
      expect(page).to have_content "Guillaume"
    end
  end

  feature 'hit points' do
    scenario 'Can expect players to see hit points' do
      expect(page).to have_content "HP: 50", "HP: 50"
    end
  end
end

