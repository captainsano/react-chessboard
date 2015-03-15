module.exports =
  class Util
    # Takes in a value from 0-63 and returns
    # the corresponding {file, rank}
    # (Number) -> {file(Number), rank(Number)}
    @squareIndexToFileRank: (index) ->
      file: (index & 0b000111)
      rank: (index & 0b111000) >> 3

    # Takes in a value from 0-63 and colors representing
    # light and dark. Returns the color for the square.
    # (Number, Any1, Any2) -> Any1/Any2
    @colorForSquareIndex: (index, light, dark) ->
      {file, rank} = @squareIndexToFileRank(index)
      if ((file ^ rank) & 0b1)
        color: 'light', value: light
      else
        color: 'dark', value: dark
