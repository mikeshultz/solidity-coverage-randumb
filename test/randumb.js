const Randumb = global.Randumb = artifacts.require('./Randumb.sol');

contract('Randumb', (accounts) => {
  let randumb;
  let jonesy = accounts[0];

  it('sets up contracts', async () => {
    randumb = await Randumb.new({from: jonesy});
    assert(randumb.address == await randumb.address);
  });

  it('gets randumb numbers', async () => {
    let num1 = await randumb.mutate(1234567890);
    let num2 = await randumb.mutate(1234567890);
    assert(num1 != num2);
  });
})