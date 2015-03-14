jest.dontMock '../src/chessboard'
jest.dontMock '../src/util'

React = require 'react/addons'
{TestUtils: TU} = React.addons

Chessboard = require '../src/chessboard'

describe 'chessboard', ->
  describe 'size prop provided', ->
    beforeEach ->
      chessboard = TU.renderIntoDocument(<Chessboard size={350} />)
      @svg = TU.findRenderedDOMComponentWithTag(chessboard, 'svg')

    it 'should render svg box with width and height', ->
      expect(@svg.props.width).toBe(350)
      expect(@svg.props.height).toBe(350)

  describe 'base squares', ->
    beforeEach ->
      chessboard = TU.renderIntoDocument(<Chessboard size={300} />)
      @baseSquares = TU.scryRenderedDOMComponentsWithClass(chessboard, 'base-square')

    it 'should count up to 64', ->
      expect(@baseSquares.length).toBe(64)

  describe 'light squares', ->
    beforeEach ->
      chessboard = TU.renderIntoDocument(<Chessboard size={300} />)
      @baseLightSquares = TU.scryRenderedDOMComponentsWithClass(chessboard, 'light base-square')

    it 'should count up to 32', ->
      expect(@baseLightSquares.length).toBe(32)

  describe 'dark squares', ->
    beforeEach ->
      chessboard = TU.renderIntoDocument(<Chessboard size={300} />)
      @baseDarkSquares = TU.scryRenderedDOMComponentsWithClass(chessboard, 'dark base-square')

    it 'should count up to 32', ->
      expect(@baseDarkSquares.length).toBe(32)
