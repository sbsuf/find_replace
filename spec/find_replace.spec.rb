require('rspec')
require('find_replace')

describe('String#find_replace') do
  it('find the string then replace the another string') do
    expect(('cat').find_replace()).to(eq('dog'))
  end
end
