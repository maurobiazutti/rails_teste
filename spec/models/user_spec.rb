require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(100..999)
    user = User.new(nickname: nickname, kind: kind, level: level)

    expect(user).to_not be_valid
  end
  it "returns the correct hero title" do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(1..99)

    user = User.create(nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end
end
Continuar o mineCurso
https://www.youtube.com/watch?v=Ooet1wbnYXs&list=PLdDT8if5attGc3fgFsFe5cvV9MwlVFNLW&index=14