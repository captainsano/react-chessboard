React = require 'react'

module.exports =
  React.createClass
    displayName: 'Chessboard'

    propTypes:
      size: React.PropTypes.number.isRequired

    render: ->
      <svg width={@props.size} height={@props.size}>
        <rect fill="#aaaaaa" width={@props.size} height={@props.size} />
      </svg>
