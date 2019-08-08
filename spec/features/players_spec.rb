feature 'Players' do
  before do
    sign_in_and_play
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

