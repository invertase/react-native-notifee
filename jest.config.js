module.exports = {
  maxConcurrency: 10,
  preset: './node_modules/react-native/jest-preset.js',
  transform: {
    '^.+\\.(js)$': '<rootDir>/node_modules/babel-jest',
    '\\.(ts|tsx)$': 'ts-jest',
  },
  testMatch: ['**/src/__tests__/**/*.test.(ts|js)'],
  modulePaths: ['node_modules', 'src'],
  moduleDirectories: ['node_modules', 'src'],
  moduleFileExtensions: ['ts', 'tsx', 'js'],
};
