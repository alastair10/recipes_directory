require 'recipes_repository'

describe RecipesRepository do

  def reset_recipes_table
    seed_sql = File.read('spec/seeds_recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_recipes_table
  end

  it "returns the list of recipes" do
    repo = RecipesRepository.new

    recipes = repo.all
    expect(recipes.length).to eq(2)
    expect(recipes.first.id).to eq('1')
    expect(recipes.last.name).to eq('Feta Salad')
  end

  it "returns a single Pizza recipe" do
    repo = RecipesRepository.new

    recipes = repo.find(1)
    expect(recipes.name).to eq('Pizza')
    expect(recipes.cooking_time).to eq('30')
    expect(recipes.rating).to eq('2')
  end


    # # 3
    # # Get another single recipe
  it "returns a single recipe Feta Salad" do
    repo = RecipesRepository.new

    recipes = repo.find(2)
    expect(recipes.name).to eq('Feta Salad')
    expect(recipes.cooking_time).to eq('90')
    expect(recipes.rating).to eq('5')
  end
end