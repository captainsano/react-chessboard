var coffeeReact = require('coffee-react');

module.exports = {
  process: function(src, path) {
    if (coffeeReact.helpers.isCoffee(path)) {
      return coffeeReact.compile(src, {bare: true});
    }

    return src;
  }
};
