jest.dontMock '../src/util'

util = require '../src/util'

describe 'util', ->
  describe '::squareIndexToFileRank', ->
    describe 'a1(0)', ->
      beforeEach ->
        {@file, @rank} = util.squareIndexToFileRank(0)

      it 'should return (0, 0)', ->
        expect(@file).toBe(0)
        expect(@rank).toBe(0)

    describe 'h1(7)', ->
      beforeEach ->
        {@file, @rank} = util.squareIndexToFileRank(7)

      it 'should return (7, 0)', ->
        expect(@file).toBe(7)
        expect(@rank).toBe(0)

    describe 'a8(56)', ->
      beforeEach ->
        {@file, @rank} = util.squareIndexToFileRank(56)

      it 'should return (0, 7)', ->
        expect(@file).toBe(0)
        expect(@rank).toBe(7)

    describe 'h8(63)', ->
      beforeEach ->
        {@file, @rank} = util.squareIndexToFileRank(63)

      it 'should return (7, 7)', ->
        expect(@file).toBe(7)
        expect(@rank).toBe(7)

  describe '::colorForSquareIndex', ->
    lightColor = '#fefefe'
    darkColor = '#232323'

    describe 'a1(0)', ->
      beforeEach ->
        @color = util.colorForSquareIndex(0, lightColor, darkColor)

      it 'should return dark color', ->
        expect(@color).toEqual(color: 'dark', value: darkColor)

    describe 'h1(7)', ->
      beforeEach ->
        @color = util.colorForSquareIndex(7, lightColor, darkColor)

      it 'should return light color', ->
        expect(@color).toEqual(color: 'light', value: lightColor)

    describe 'a8(56)', ->
      beforeEach ->
        @color = util.colorForSquareIndex(56, lightColor, darkColor)

      it 'should return light color', ->
        expect(@color).toEqual(color: 'light', value: lightColor)

    describe 'h8(63)', ->
      beforeEach ->
        @color = util.colorForSquareIndex(63, lightColor, darkColor)

      it 'should return dark color', ->
        expect(@color).toEqual(color: 'dark', value: darkColor)
