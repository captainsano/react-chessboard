R = require 'ramda'
React = require 'react'

Util = require './util'

module.exports =
  React.createClass
    displayName: 'Chessboard'

    propTypes:
      size: React.PropTypes.number.isRequired
      lightSquareColor: React.PropTypes.string
      darkSquareColor: React.PropTypes.string

    getDefaultProps: ->
      lightSquareColor: '#fefefe'
      darkSquareColor: '#232323'

    _getSquare: (i) ->
      squareIndex = 63 - i
      {file, rank} = Util.squareIndexToFileRank(squareIndex)
      {color: squareColorType, value: squareColor} = Util.colorForSquareIndex(squareIndex, @props.lightSquareColor, @props.darkSquareColor)
      squareSize = @props.size / 8

      <rect
        key={"square-#{squareIndex}"}
        className={"#{squareColorType} base-square"}
        x={squareSize * file}
        y={squareSize * (7 - rank)}
        width={squareSize}
        height={squareSize}
        fill={squareColor}
      />

    render: ->
      squares = R.times(@_getSquare, 64)

      <svg width={@props.size} height={@props.size}>
        {squares}
      </svg>
