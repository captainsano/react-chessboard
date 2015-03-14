jest.dontMock '../src/chessboard'

React = require 'react/addons'
{TestUtils: TU} = React.addons

Chessboard = require '../src/chessboard'

describe 'chessboard', ->
  describe 'size prop provided', ->
    chessboard = null
    svg = null

    beforeEach ->
      chessboard = TU.renderIntoDocument <Chessboard size={350} />
      svg = TU.findRenderedDOMComponentWithTag(chessboard, 'svg')

    it 'should render svg box accordingly', ->
      expect(svg.props.width).toBe(350)
      expect(svg.props.height).toBe(350)
