module.exports = {
    "source": "src",
    "output": "lib",
    "targets": [
      ["aar", {"reverseJetify": true}],
      ["commonjs", {"copyFlow": true}],
      "module",
      "typescript",
    ]
  }